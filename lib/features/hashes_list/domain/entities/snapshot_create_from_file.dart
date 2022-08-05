part of 'snapshot.dart';

extension SnapshotFileFactory on Snapshot {
  static String snapshotName(String rawObjName) {
    return '$rawObjName ${Fmt.basicDateFormat.format(DateTime.now())}';
  }

  static HashObject? insertSnapIntoHashObject(
    HashesListLoaded hashListState,
    Snapshot newSnapshot,
  ) {
    final snapName = newSnapshot.name;

    HashObject? hashObject;
    final index = hashListState.objects
        .indexWhere((element) => newSnapshot.belongsToObject(element));
    if (index != -1) {
      hashObject = hashListState.objects[index];
    }

    if (hashObject != null) {
      logger.i(
        'New snaphost $snapName belongs to the object ${hashObject.name}',
      );
    } else {
      logger.i('Snapshot $snapName is unique');
    }

    return hashObject;
  }

  static Future<Either<String, Pair<HashObject?, Snapshot>>>
      createSnapshotFromFile({
    required String filePath,
    required SettingsConfig settings,
    required BuildContext context,
  }) async {
    final hashes = await calcHashes(
      settings,
      filePath,
    );

    final rawObjName = filePath.split('/').last;
    final snapName = snapshotName(rawObjName);

    logger.i('Calculated hashes for the object $snapName');

    var hashListState = BlocProvider.of<HashesListBloc>(context).state;
    if (hashListState is HashesListLoaded) {
      final newSnapshot = Snapshot(
        name: snapName,
        hashes: hashes.split('\n'),
        stamp: DateTime.now(),
        externalPathToObj: filePath,
        settingsConfig: settings,
        fileHash: hashFile(filePath),
      );

      final hashObject = insertSnapIntoHashObject(hashListState, newSnapshot);

      return Either.right(
        Pair<HashObject?, Snapshot>(hashObject, newSnapshot),
      );
    } else {
      return const Either.left('Hashes list is not initalized :(');
    }
  }

  /// Calc hashes
  static Future<String> calcHashes(
    SettingsConfig settings,
    String filePath,
  ) async {
    final calculator = Calc2(
      gridSize: settings.gridSize,
      nSections: settings.nSections,
      filePath: filePath,
    );

    return await calculator.calcHashes();
  }
}
