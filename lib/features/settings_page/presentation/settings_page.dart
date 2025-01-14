import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:threedpass/core/widgets/paddings.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/app_settings/app_settings.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/hash_settings_block.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/preview_settings_block.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/settings_appbar.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/version_info.dart';
import 'package:threedpass/features/settings_page/presentation/widgets/wallet_settings_block.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return PlatformScaffold(
      appBar: SettingsAppbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBoxH16(),
            HashSettingsBlock(),
            PreviewSettingsBlock(),
            WalletSettingsBlock(),
            AppSettingsBlock(),
            SizedBoxH16(),
            VersionInfo(),
            SizedBoxH8(),
          ],
        ),
      ),
    );
  }
}
