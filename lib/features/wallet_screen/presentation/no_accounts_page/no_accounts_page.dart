import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:threedpass/core/widgets/appbars/common_logo_appbar.dart';
import 'package:threedpass/core/widgets/appbars/d3p_platfrom_appbar.dart';
import 'package:threedpass/core/widgets/d3p_scaffold.dart';
import 'package:threedpass/core/widgets/paddings.dart';
import 'package:threedpass/features/wallet_screen/presentation/no_accounts_page/widgets/account_card.dart';
import 'package:threedpass/features/wallet_screen/presentation/widgets/connect_status.dart';

class NoAccountsPage extends StatelessWidget {
  const NoAccountsPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return D3pScaffold(
      appbarTitle: 'wallet_header_title',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ConnectStatus(),
          SizedBoxH24(),
          AccountCard(),
        ],
      ),
    );
  }
}
