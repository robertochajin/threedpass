import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:threedpass/features/hashes_list/domain/entities/hash_object.dart';
import 'package:threedpass/features/hashes_list/domain/entities/snapshot.dart';
import 'package:threedpass/features/preview_page/bloc/preview_page_cubit.dart';

class StableHashText extends StatelessWidget {
  const StableHashText({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PreviewPageCubitState state;

  List<String> stableHashes() {
    switch (state.runtimeType) {
      case PreviewNewSnapshot:
        final stateT = (state as PreviewNewSnapshot);
        return stateT.hashObject.stableHashesPlusNew(stateT.snapshot);
      case PreviewExistingSnapshot:
        final stateT = (state as PreviewExistingSnapshot);
        return stateT.hashObject.stableHashes;
      case PreviewNewObject:
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final hashes = stableHashes();

    if (hashes.isEmpty) {
      return const _Placeholder();
    }

    final children = <TextSpan>[];
    for (int i = 0; i < hashes.length; i++) {
      children.add(
        TextSpan(
          text: (i + 1).toString() + '. ' + hashes[i] + '\n',
        ),
      );
    }

    return Text.rich(
      TextSpan(
        text: 'stable_hashes_list_title'.tr() + '\n',
        children: children,
      ),
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          text: 'no_stable_hash_placeholder'.tr() + '\n',
          style: Theme.of(context).textTheme.bodyText1,
          children: [
            TextSpan(
              text: 'no_stable_hash_help'.tr(),
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      );
}
