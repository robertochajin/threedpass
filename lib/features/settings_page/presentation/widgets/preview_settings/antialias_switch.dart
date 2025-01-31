import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threedpass/features/settings_page/bloc/settings_page_cubit.dart';
import 'package:threedpass/features/settings_page/domain/entities/global_settings.dart';
import 'package:threedpass/features/settings_page/domain/entities/preview_settings.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/default_settings_button.dart';
import 'package:unicons/unicons.dart';

class AntialiasSwitch extends StatelessWidget {
  const AntialiasSwitch({final Key? key}) : super(key: key);

  void onChanged(final bool newValue, final BuildContext context) {
    final cubit = BlocProvider.of<SettingsConfigCubit>(context);
    final newPreviewConfig =
        cubit.state.previewSettings.copyWith(antialias: newValue);
    final newState = cubit.state.copyWith(previewSettings: newPreviewConfig);
    cubit.updateSettings(newState);
  }

  @override
  Widget build(final BuildContext context) {
    return DefaultSettingsButton.boolean(
      text: 'antialias_button_label',
      iconData: UniconsLine.adjust_alt,
      iconColor: Colors.green,
      initialValue: BlocProvider.of<SettingsConfigCubit>(context)
          .state
          .previewSettings
          .antialias,
      onPressedBool: (final bool p0) => onChanged(p0, context),
    );
  }
}
