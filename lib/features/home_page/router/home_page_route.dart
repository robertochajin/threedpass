import 'package:auto_route/auto_route.dart';
import 'package:threedpass/features/home_page/router/pin_code_guard.dart';
import 'package:threedpass/features/scan_page/router/scan_page_route.dart';
import 'package:threedpass/features/settings_page/router/settings_page_route.dart';
import 'package:threedpass/features/wallet_screen/router/wallet_page_route.dart';
import 'package:threedpass/router/router.gr.dart';

AutoRoute initialAutoRoute = AutoRoute(
  page: InitialWrapperRoute.page,
  path: '/',
  initial: true,
  children: [
    // AutoRoute.guarded(page: page, onNavigation: onNavigation)
    AutoRoute(
      page: HomeRoute.page,
      path: '',
      guards: [PinCodeGuard()],
      children: [
        scanPageRoute,
        walletPageRoute,
        settingsAutoRoute,
      ],
    ),
    AutoRoute(page: LoginRoute.page),
  ],
);
