import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threedpass/core/polkawallet/app_service.dart';
import 'package:threedpass/core/polkawallet/bloc/app_service_cubit.dart';
import 'package:threedpass/core/theme/d3p_special_colors.dart';
import 'package:threedpass/core/widgets/paddings.dart';
import 'package:threedpass/features/wallet_screen/presentation/assets_page/widgets/accounts_drawer.dart';
import 'package:threedpass/features/wallet_screen/presentation/assets_page/widgets/asset_page_appbar.dart';
import 'package:threedpass/features/wallet_screen/presentation/assets_page/widgets/buttons_panel.dart';
import 'package:threedpass/features/wallet_screen/presentation/assets_page/widgets/coins_balance.dart';
import 'package:threedpass/features/wallet_screen/presentation/assets_page/widgets/non_native_tokens/non_native_tokens.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<AppServiceLoaderCubit, AppService>(
      builder: (final context, final state) {
        final theme = Theme.of(context);
        return Scaffold(
          backgroundColor: theme.customColors.scaffoldBackground,
          appBar: AssetPageAppbar(
            account: state.keyring.current,
            themeData: theme,
          ),
          drawer: AccountsDrawer(
            appServiceCubit: BlocProvider.of<AppServiceLoaderCubit>(context),
            accounts: state.keyring.allAccounts,
            current: state.keyring.current,
            context: context,
            theme: theme,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBoxH36(),
              CoinsBalance(),
              SizedBoxH16(),
              AssetPageButtonsPanel(),
              Flexible(
                child: NonNativeTokens(),
              ),
            ],
          ),
        );
      },
    );
  }
}
