part of '../create_account_from_object.dart';

class _ChooseHashDropdown extends StatelessWidget {
  const _ChooseHashDropdown({
    required this.objectValueNotifier,
    required this.chosenHash,
  });

  final ValueNotifier<HashObject> objectValueNotifier;
  final ValueNotifier<String> chosenHash;

  void onHashChoose(final String? value) {
    if (value != null) {
      chosenHash.value = value;
    }
  }

  @override
  Widget build(final BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: objectValueNotifier,
      builder: (final ___, final HashObject hashObject, final __) =>
          ValueListenableBuilder(
        valueListenable: chosenHash,
        builder: (final context, final _, final __) => _DropdownButtonString(
          context: context,
          hashObject: hashObject,
          chosenHash: chosenHash,
          onChanged: (final String? modelChosen) => onHashChoose(modelChosen),
        ),
      ),
    );
  }
}

class _DropdownButtonString extends DropdownButton<String> {
  _DropdownButtonString({
    required final HashObject hashObject,
    required final super.onChanged,
    required final BuildContext context,
    required final ValueNotifier<String> chosenHash,
  }) : super(
          isExpanded: true,
          style: Theme.of(context).textTheme.bodyText1,
          value: chosenHash.value,
          items: hashObject.stableHashes
              .map(
                (final e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(
                    e,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              )
              .toList(),
        );
}