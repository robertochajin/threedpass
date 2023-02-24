import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:threedpass/core/theme/d3p_special_styles.dart';
import 'package:threedpass/core/utils/validators.dart';
import 'package:threedpass/core/widgets/buttons/text_button.dart';
import 'package:threedpass/core/widgets/input/textformfield/textformfield.dart';
import 'package:threedpass/core/widgets/paddings.dart';
import 'package:threedpass/features/hashes_list/bloc/hashes_list_bloc.dart';
import 'package:threedpass/features/hashes_list/domain/entities/hash_object.dart';
import 'package:threedpass/features/hashes_list/domain/entities/snapshot.dart';
import 'package:threedpass/features/preview_page/bloc/outer_context_cubit.dart';
import 'package:threedpass/router/route_names.dart';

part './widgets/object_name_input.dart';
part './widgets/snapshot_name_input.dart';

class SaveObjectDialog extends StatelessWidget {
  SaveObjectDialog({
    required this.snapshot,
    final Key? key,
  })  : snapshotNameController = TextEditingController(text: snapshot.name),
        super(key: key);

  final objectNameController = TextEditingController();
  final Snapshot snapshot;
  final TextEditingController snapshotNameController;
  final _formKey = GlobalKey<FormState>();

  Future<void> saveObject(final BuildContext context) async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      final newNamedModel =
          snapshot.copyWith(name: snapshotNameController.text);

      final newObject = HashObject.create(
        name: objectNameController.text,
        snapshots: [
          newNamedModel,
        ],
      );

      BlocProvider.of<HashesListBloc>(context).add(
        AddObject(
          object: newObject,
        ),
      );

      final outerContext = BlocProvider.of<OuterContextCubit>(context).state;
      outerContext.router.popUntilRouteWithName(RouteNames.homePage);
    }
  }

  @override
  Widget build(final BuildContext context) {
    return PlatformAlertDialog(
      title: Text(
        'create_object_title'.tr(),
        style: Theme.of(context).customTextStyles.d3ptitleMedium,
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _ObjectNameInput(objectNameController),
            const SizedBoxH8(),
            _SnapshotNameInput(snapshotNameController),
          ],
        ),
      ),
      actions: [
        D3pTextButton(
          text: 'Cancel'.tr(),
          onPressed: () => context.router.pop(),
        ),
        D3pTextButton(
          text: 'Save'.tr(),
          onPressed: () => saveObject(context),
        ),
      ],
    );
  }
}
