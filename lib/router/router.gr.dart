// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i33;
import 'package:flutter/material.dart' as _i34;

import '../core/widgets/default_loading_dialog.dart' as _i6;
import '../core/widgets/error_page.dart' as _i3;
import '../features/accounts/presentation/pages/create_account/create_account_credentials.dart'
    as _i28;
import '../features/accounts/presentation/pages/create_account/create_account_from_object/create_account_from_object.dart'
    as _i31;
import '../features/accounts/presentation/pages/create_account/create_account_info_page.dart'
    as _i25;
import '../features/accounts/presentation/pages/create_account/create_account_loader.dart'
    as _i29;
import '../features/accounts/presentation/pages/create_account/create_account_mnemonic_backup.dart'
    as _i26;
import '../features/accounts/presentation/pages/create_account/create_account_mnemonic_confirm.dart'
    as _i27;
import '../features/accounts/presentation/pages/create_account/create_account_type.dart'
    as _i24;
import '../features/accounts/presentation/pages/create_account/create_account_wrapper.dart'
    as _i4;
import '../features/accounts/presentation/pages/create_account/import_mnemonic_form.dart'
    as _i32;
import '../features/accounts/presentation/pages/no_stable_hash_dialog.dart'
    as _i30;
import '../features/compare_page/presentation/pages/compare_page_wrapper.dart'
    as _i19;
import '../features/hashes_list/domain/entities/hash_object.dart' as _i36;
import '../features/hashes_list/domain/entities/snapshot.dart' as _i37;
import '../features/home_page/presentation/home_page.dart' as _i1;
import '../features/preview_page/bloc/preview_page_cubit.dart' as _i40;
import '../features/preview_page/presentation/preview_page.dart' as _i18;
import '../features/preview_page/presentation/preview_page_wrapper.dart' as _i2;
import '../features/preview_page/presentation/widgets/rename_snapshot_dialog.dart'
    as _i23;
import '../features/preview_page/presentation/widgets/save_hash_dialog.dart'
    as _i22;
import '../features/preview_page/presentation/widgets/save_object_dialog/save_object_dialog.dart'
    as _i21;
import '../features/preview_page/presentation/widgets/save_top_hashes_dialog/save_top_hashes_dialog.dart'
    as _i20;
import '../features/scan_page/presentation/pages/scan_page.dart' as _i10;
import '../features/scan_page/presentation/pages/scan_page_wrapper.dart' as _i7;
import '../features/scan_page/presentation/widgets/calc_hash_loading_dialog.dart'
    as _i5;
import '../features/settings_page/presentation/settings_page.dart' as _i9;
import '../features/wallet_screen/domain/entities/transfer_meta_dto.dart'
    as _i38;
import '../features/wallet_screen/presentation/assets_page/remove_account_dialog.dart'
    as _i16;
import '../features/wallet_screen/presentation/non_native_token_screen/domain/entities/get_extrinsics_usecase_params.dart'
    as _i39;
import '../features/wallet_screen/presentation/non_native_token_screen/presentation/non_native_token_wrapper.dart'
    as _i15;
import '../features/wallet_screen/presentation/recieve_page/recieve_page.dart'
    as _i13;
import '../features/wallet_screen/presentation/transactions_history/presentation/transactions_history_wrapper.dart'
    as _i14;
import '../features/wallet_screen/presentation/transfer_page/transfer_page.dart'
    as _i17;
import '../features/wallet_screen/presentation/transfer_page/transfer_page_wrapper.dart'
    as _i12;
import '../features/wallet_screen/presentation/wallet_page/wallet_page.dart'
    as _i11;
import '../features/wallet_screen/presentation/wallet_page/wallet_page_wrapper.dart'
    as _i8;
import 'router.dart' as _i35;

class AppRouter extends _i33.RootStackRouter {
  AppRouter([_i34.GlobalKey<_i34.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i33.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    PreviewWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<PreviewWrapperRouteArgs>();
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PreviewPageWrapper(
          hashObject: args.hashObject,
          snapshot: args.snapshot,
          key: args.key,
          createNewAnyway: args.createNewAnyway,
        ),
      );
    },
    ErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ErrorRouteArgs>();
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ErrorPage(
          error: args.error,
          key: args.key,
        ),
      );
    },
    CreateAccountWrapperRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CreateAccountWrapper(),
      );
    },
    CalcHashLoadingDialogRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.CalcHashLoadingWidget(),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DefaultLoadingDialogRoute.name: (routeData) {
      final args = routeData.argsAs<DefaultLoadingDialogRouteArgs>(
          orElse: () => const DefaultLoadingDialogRouteArgs());
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.DefaultLoadingDialog(
          key: args.key,
          text: args.text,
        ),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanWrapperRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ScanPageWrapper(),
      );
    },
    WalletWrapperRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.WalletPageWrapper(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsPage(),
      );
    },
    ScanRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ScanPage(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.WalletPage(),
      );
    },
    TransferWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<TransferWrapperRouteArgs>();
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.TransferPageWrapper(
          metadata: args.metadata,
          key: args.key,
        ),
      );
    },
    RecieveRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.RecievePage(),
      );
    },
    TransactionsHistoryRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.TransactionsHistoryWrapper(),
      );
    },
    NonNativeTokenRoute.name: (routeData) {
      final args = routeData.argsAs<NonNativeTokenRouteArgs>();
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i15.NonNativeTokenWrapper(
          args.params,
          key: args.key,
        ),
      );
    },
    RemoveAccountDialogRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i16.RemoveAccountDialog(),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TransferRoute.name: (routeData) {
      final args = routeData.argsAs<TransferRouteArgs>(
          orElse: () => const TransferRouteArgs());
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i17.TransferPage(key: args.key),
      );
    },
    PreviewRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.PreviewPage(),
      );
    },
    CompareWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<CompareWrapperRouteArgs>();
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.ComparePageWrapper(
          origObj: args.origObj,
          hashObject: args.hashObject,
          key: args.key,
        ),
      );
    },
    SaveTopHashesDialogRoute.name: (routeData) {
      final args = routeData.argsAs<SaveTopHashesDialogRouteArgs>();
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.SaveTopHashesDialog(
          pageCubitState: args.pageCubitState,
          key: args.key,
        ),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SaveObjectDialogRoute.name: (routeData) {
      final args = routeData.argsAs<SaveObjectDialogRouteArgs>();
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: _i21.SaveObjectDialog(
          snapshot: args.snapshot,
          key: args.key,
        ),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SaveHashDialogRoute.name: (routeData) {
      final args = routeData.argsAs<SaveHashDialogRouteArgs>();
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: _i22.SaveHashDialog(
          snapshot: args.snapshot,
          hashObject: args.hashObject,
          key: args.key,
        ),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RenameSnapshotDialogRoute.name: (routeData) {
      final args = routeData.argsAs<RenameSnapshotDialogRouteArgs>();
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: _i23.RenameSnapshotDialog(
          snapshot: args.snapshot,
          hashObject: args.hashObject,
          key: args.key,
        ),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateAccountTypeRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.CreateAccountType(),
      );
    },
    CreateAccountInfoRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.CreateAccountInfoPage(),
      );
    },
    MnemonicBackupRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.CreateAccountMnemonicBackup(),
      );
    },
    MnemonicConfirmRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i27.CreateAccountMnemonicConfirm(),
      );
    },
    CreateAccountCredentialsRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAccountCredentialsRouteArgs>();
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i28.CreateAccountCredentials(
          appbarText: args.appbarText,
          key: args.key,
        ),
      );
    },
    CreateAccountLoaderRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i29.CreateAccountLoader(),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NoStableHashDialogRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i30.NoStableHashDialog(),
        customRouteBuilder: _i35.dialogBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateAccountFromObjectRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.CreateAccountFromObject(),
      );
    },
    ImportMnemonicFormRoute.name: (routeData) {
      final args = routeData.argsAs<ImportMnemonicFormRouteArgs>(
          orElse: () => const ImportMnemonicFormRouteArgs());
      return _i33.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i32.ImportMnemonicForm(key: args.key),
      );
    },
  };

  @override
  List<_i33.RouteConfig> get routes => [
        _i33.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i33.RouteConfig(
              ScanWrapperRoute.name,
              path: 'scan-page-wrapper',
              parent: HomeRoute.name,
              children: [
                _i33.RouteConfig(
                  ScanRoute.name,
                  path: '',
                  parent: ScanWrapperRoute.name,
                )
              ],
            ),
            _i33.RouteConfig(
              WalletWrapperRoute.name,
              path: 'wallet-page-wrapper',
              parent: HomeRoute.name,
              children: [
                _i33.RouteConfig(
                  WalletRoute.name,
                  path: '',
                  parent: WalletWrapperRoute.name,
                ),
                _i33.RouteConfig(
                  TransferWrapperRoute.name,
                  path: 'transfer-page-wrapper',
                  parent: WalletWrapperRoute.name,
                  children: [
                    _i33.RouteConfig(
                      TransferRoute.name,
                      path: '',
                      parent: TransferWrapperRoute.name,
                    )
                  ],
                ),
                _i33.RouteConfig(
                  RecieveRoute.name,
                  path: 'recieve-page',
                  parent: WalletWrapperRoute.name,
                ),
                _i33.RouteConfig(
                  TransactionsHistoryRoute.name,
                  path: 'transactions-history-wrapper',
                  parent: WalletWrapperRoute.name,
                ),
                _i33.RouteConfig(
                  NonNativeTokenRoute.name,
                  path: 'non-native-token-wrapper',
                  parent: WalletWrapperRoute.name,
                ),
                _i33.RouteConfig(
                  RemoveAccountDialogRoute.name,
                  path: 'remove-account-dialog',
                  parent: WalletWrapperRoute.name,
                ),
              ],
            ),
            _i33.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i33.RouteConfig(
          PreviewWrapperRoute.name,
          path: '/preview-page-wrapper',
          children: [
            _i33.RouteConfig(
              PreviewRoute.name,
              path: '',
              parent: PreviewWrapperRoute.name,
            ),
            _i33.RouteConfig(
              CompareWrapperRoute.name,
              path: 'compare-page-wrapper',
              parent: PreviewWrapperRoute.name,
            ),
            _i33.RouteConfig(
              SaveTopHashesDialogRoute.name,
              path: 'save-top-hashes-dialog',
              parent: PreviewWrapperRoute.name,
            ),
            _i33.RouteConfig(
              SaveObjectDialogRoute.name,
              path: 'save-object-dialog',
              parent: PreviewWrapperRoute.name,
            ),
            _i33.RouteConfig(
              SaveHashDialogRoute.name,
              path: 'save-hash-dialog',
              parent: PreviewWrapperRoute.name,
            ),
            _i33.RouteConfig(
              RenameSnapshotDialogRoute.name,
              path: 'rename-snapshot-dialog',
              parent: PreviewWrapperRoute.name,
            ),
          ],
        ),
        _i33.RouteConfig(
          ErrorRoute.name,
          path: '/error-page',
        ),
        _i33.RouteConfig(
          CreateAccountWrapperRoute.name,
          path: '/create-account/',
          children: [
            _i33.RouteConfig(
              CreateAccountTypeRoute.name,
              path: 'choose-type',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              CreateAccountInfoRoute.name,
              path: 'generate-random',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              MnemonicBackupRoute.name,
              path: 'create-account-mnemonic-backup',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              MnemonicConfirmRoute.name,
              path: 'create-account-mnemonic-confirm',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              CreateAccountCredentialsRoute.name,
              path: 'create-account-credentials',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              CreateAccountLoaderRoute.name,
              path: 'create-account-loader',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              NoStableHashDialogRoute.name,
              path: 'no-stable-hash-dialog',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              CreateAccountFromObjectRoute.name,
              path: 'create-account-from-object',
              parent: CreateAccountWrapperRoute.name,
            ),
            _i33.RouteConfig(
              ImportMnemonicFormRoute.name,
              path: 'import-mnemonic-form',
              parent: CreateAccountWrapperRoute.name,
            ),
          ],
        ),
        _i33.RouteConfig(
          CalcHashLoadingDialogRoute.name,
          path: '/calc-hash-loading-widget',
        ),
        _i33.RouteConfig(
          DefaultLoadingDialogRoute.name,
          path: '/default-loading-dialog',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i33.PageRouteInfo<void> {
  const HomeRoute({List<_i33.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.PreviewPageWrapper]
class PreviewWrapperRoute extends _i33.PageRouteInfo<PreviewWrapperRouteArgs> {
  PreviewWrapperRoute({
    required _i36.HashObject? hashObject,
    required _i37.Snapshot snapshot,
    _i34.Key? key,
    bool createNewAnyway = false,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          PreviewWrapperRoute.name,
          path: '/preview-page-wrapper',
          args: PreviewWrapperRouteArgs(
            hashObject: hashObject,
            snapshot: snapshot,
            key: key,
            createNewAnyway: createNewAnyway,
          ),
          initialChildren: children,
        );

  static const String name = 'PreviewWrapperRoute';
}

class PreviewWrapperRouteArgs {
  const PreviewWrapperRouteArgs({
    required this.hashObject,
    required this.snapshot,
    this.key,
    this.createNewAnyway = false,
  });

  final _i36.HashObject? hashObject;

  final _i37.Snapshot snapshot;

  final _i34.Key? key;

  final bool createNewAnyway;

  @override
  String toString() {
    return 'PreviewWrapperRouteArgs{hashObject: $hashObject, snapshot: $snapshot, key: $key, createNewAnyway: $createNewAnyway}';
  }
}

/// generated route for
/// [_i3.ErrorPage]
class ErrorRoute extends _i33.PageRouteInfo<ErrorRouteArgs> {
  ErrorRoute({
    required Object error,
    _i34.Key? key,
  }) : super(
          ErrorRoute.name,
          path: '/error-page',
          args: ErrorRouteArgs(
            error: error,
            key: key,
          ),
        );

  static const String name = 'ErrorRoute';
}

class ErrorRouteArgs {
  const ErrorRouteArgs({
    required this.error,
    this.key,
  });

  final Object error;

  final _i34.Key? key;

  @override
  String toString() {
    return 'ErrorRouteArgs{error: $error, key: $key}';
  }
}

/// generated route for
/// [_i4.CreateAccountWrapper]
class CreateAccountWrapperRoute extends _i33.PageRouteInfo<void> {
  const CreateAccountWrapperRoute({List<_i33.PageRouteInfo>? children})
      : super(
          CreateAccountWrapperRoute.name,
          path: '/create-account/',
          initialChildren: children,
        );

  static const String name = 'CreateAccountWrapperRoute';
}

/// generated route for
/// [_i5.CalcHashLoadingWidget]
class CalcHashLoadingDialogRoute extends _i33.PageRouteInfo<void> {
  const CalcHashLoadingDialogRoute()
      : super(
          CalcHashLoadingDialogRoute.name,
          path: '/calc-hash-loading-widget',
        );

  static const String name = 'CalcHashLoadingDialogRoute';
}

/// generated route for
/// [_i6.DefaultLoadingDialog]
class DefaultLoadingDialogRoute
    extends _i33.PageRouteInfo<DefaultLoadingDialogRouteArgs> {
  DefaultLoadingDialogRoute({
    _i34.Key? key,
    String? text,
  }) : super(
          DefaultLoadingDialogRoute.name,
          path: '/default-loading-dialog',
          args: DefaultLoadingDialogRouteArgs(
            key: key,
            text: text,
          ),
        );

  static const String name = 'DefaultLoadingDialogRoute';
}

class DefaultLoadingDialogRouteArgs {
  const DefaultLoadingDialogRouteArgs({
    this.key,
    this.text,
  });

  final _i34.Key? key;

  final String? text;

  @override
  String toString() {
    return 'DefaultLoadingDialogRouteArgs{key: $key, text: $text}';
  }
}

/// generated route for
/// [_i7.ScanPageWrapper]
class ScanWrapperRoute extends _i33.PageRouteInfo<void> {
  const ScanWrapperRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ScanWrapperRoute.name,
          path: 'scan-page-wrapper',
          initialChildren: children,
        );

  static const String name = 'ScanWrapperRoute';
}

/// generated route for
/// [_i8.WalletPageWrapper]
class WalletWrapperRoute extends _i33.PageRouteInfo<void> {
  const WalletWrapperRoute({List<_i33.PageRouteInfo>? children})
      : super(
          WalletWrapperRoute.name,
          path: 'wallet-page-wrapper',
          initialChildren: children,
        );

  static const String name = 'WalletWrapperRoute';
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i33.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings-page',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i10.ScanPage]
class ScanRoute extends _i33.PageRouteInfo<void> {
  const ScanRoute()
      : super(
          ScanRoute.name,
          path: '',
        );

  static const String name = 'ScanRoute';
}

/// generated route for
/// [_i11.WalletPage]
class WalletRoute extends _i33.PageRouteInfo<void> {
  const WalletRoute()
      : super(
          WalletRoute.name,
          path: '',
        );

  static const String name = 'WalletRoute';
}

/// generated route for
/// [_i12.TransferPageWrapper]
class TransferWrapperRoute
    extends _i33.PageRouteInfo<TransferWrapperRouteArgs> {
  TransferWrapperRoute({
    required _i38.TransferMetaDTO metadata,
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          TransferWrapperRoute.name,
          path: 'transfer-page-wrapper',
          args: TransferWrapperRouteArgs(
            metadata: metadata,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TransferWrapperRoute';
}

class TransferWrapperRouteArgs {
  const TransferWrapperRouteArgs({
    required this.metadata,
    this.key,
  });

  final _i38.TransferMetaDTO metadata;

  final _i34.Key? key;

  @override
  String toString() {
    return 'TransferWrapperRouteArgs{metadata: $metadata, key: $key}';
  }
}

/// generated route for
/// [_i13.RecievePage]
class RecieveRoute extends _i33.PageRouteInfo<void> {
  const RecieveRoute()
      : super(
          RecieveRoute.name,
          path: 'recieve-page',
        );

  static const String name = 'RecieveRoute';
}

/// generated route for
/// [_i14.TransactionsHistoryWrapper]
class TransactionsHistoryRoute extends _i33.PageRouteInfo<void> {
  const TransactionsHistoryRoute()
      : super(
          TransactionsHistoryRoute.name,
          path: 'transactions-history-wrapper',
        );

  static const String name = 'TransactionsHistoryRoute';
}

/// generated route for
/// [_i15.NonNativeTokenWrapper]
class NonNativeTokenRoute extends _i33.PageRouteInfo<NonNativeTokenRouteArgs> {
  NonNativeTokenRoute({
    required _i39.GetExtrinsicsUseCaseParams params,
    _i34.Key? key,
  }) : super(
          NonNativeTokenRoute.name,
          path: 'non-native-token-wrapper',
          args: NonNativeTokenRouteArgs(
            params: params,
            key: key,
          ),
        );

  static const String name = 'NonNativeTokenRoute';
}

class NonNativeTokenRouteArgs {
  const NonNativeTokenRouteArgs({
    required this.params,
    this.key,
  });

  final _i39.GetExtrinsicsUseCaseParams params;

  final _i34.Key? key;

  @override
  String toString() {
    return 'NonNativeTokenRouteArgs{params: $params, key: $key}';
  }
}

/// generated route for
/// [_i16.RemoveAccountDialog]
class RemoveAccountDialogRoute extends _i33.PageRouteInfo<void> {
  const RemoveAccountDialogRoute()
      : super(
          RemoveAccountDialogRoute.name,
          path: 'remove-account-dialog',
        );

  static const String name = 'RemoveAccountDialogRoute';
}

/// generated route for
/// [_i17.TransferPage]
class TransferRoute extends _i33.PageRouteInfo<TransferRouteArgs> {
  TransferRoute({_i34.Key? key})
      : super(
          TransferRoute.name,
          path: '',
          args: TransferRouteArgs(key: key),
        );

  static const String name = 'TransferRoute';
}

class TransferRouteArgs {
  const TransferRouteArgs({this.key});

  final _i34.Key? key;

  @override
  String toString() {
    return 'TransferRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.PreviewPage]
class PreviewRoute extends _i33.PageRouteInfo<void> {
  const PreviewRoute()
      : super(
          PreviewRoute.name,
          path: '',
        );

  static const String name = 'PreviewRoute';
}

/// generated route for
/// [_i19.ComparePageWrapper]
class CompareWrapperRoute extends _i33.PageRouteInfo<CompareWrapperRouteArgs> {
  CompareWrapperRoute({
    required _i37.Snapshot origObj,
    required _i36.HashObject hashObject,
    _i34.Key? key,
  }) : super(
          CompareWrapperRoute.name,
          path: 'compare-page-wrapper',
          args: CompareWrapperRouteArgs(
            origObj: origObj,
            hashObject: hashObject,
            key: key,
          ),
        );

  static const String name = 'CompareWrapperRoute';
}

class CompareWrapperRouteArgs {
  const CompareWrapperRouteArgs({
    required this.origObj,
    required this.hashObject,
    this.key,
  });

  final _i37.Snapshot origObj;

  final _i36.HashObject hashObject;

  final _i34.Key? key;

  @override
  String toString() {
    return 'CompareWrapperRouteArgs{origObj: $origObj, hashObject: $hashObject, key: $key}';
  }
}

/// generated route for
/// [_i20.SaveTopHashesDialog]
class SaveTopHashesDialogRoute
    extends _i33.PageRouteInfo<SaveTopHashesDialogRouteArgs> {
  SaveTopHashesDialogRoute({
    required _i40.PreviewPageCubitState pageCubitState,
    _i34.Key? key,
  }) : super(
          SaveTopHashesDialogRoute.name,
          path: 'save-top-hashes-dialog',
          args: SaveTopHashesDialogRouteArgs(
            pageCubitState: pageCubitState,
            key: key,
          ),
        );

  static const String name = 'SaveTopHashesDialogRoute';
}

class SaveTopHashesDialogRouteArgs {
  const SaveTopHashesDialogRouteArgs({
    required this.pageCubitState,
    this.key,
  });

  final _i40.PreviewPageCubitState pageCubitState;

  final _i34.Key? key;

  @override
  String toString() {
    return 'SaveTopHashesDialogRouteArgs{pageCubitState: $pageCubitState, key: $key}';
  }
}

/// generated route for
/// [_i21.SaveObjectDialog]
class SaveObjectDialogRoute
    extends _i33.PageRouteInfo<SaveObjectDialogRouteArgs> {
  SaveObjectDialogRoute({
    required _i37.Snapshot snapshot,
    _i34.Key? key,
  }) : super(
          SaveObjectDialogRoute.name,
          path: 'save-object-dialog',
          args: SaveObjectDialogRouteArgs(
            snapshot: snapshot,
            key: key,
          ),
        );

  static const String name = 'SaveObjectDialogRoute';
}

class SaveObjectDialogRouteArgs {
  const SaveObjectDialogRouteArgs({
    required this.snapshot,
    this.key,
  });

  final _i37.Snapshot snapshot;

  final _i34.Key? key;

  @override
  String toString() {
    return 'SaveObjectDialogRouteArgs{snapshot: $snapshot, key: $key}';
  }
}

/// generated route for
/// [_i22.SaveHashDialog]
class SaveHashDialogRoute extends _i33.PageRouteInfo<SaveHashDialogRouteArgs> {
  SaveHashDialogRoute({
    required _i37.Snapshot snapshot,
    required _i36.HashObject hashObject,
    _i34.Key? key,
  }) : super(
          SaveHashDialogRoute.name,
          path: 'save-hash-dialog',
          args: SaveHashDialogRouteArgs(
            snapshot: snapshot,
            hashObject: hashObject,
            key: key,
          ),
        );

  static const String name = 'SaveHashDialogRoute';
}

class SaveHashDialogRouteArgs {
  const SaveHashDialogRouteArgs({
    required this.snapshot,
    required this.hashObject,
    this.key,
  });

  final _i37.Snapshot snapshot;

  final _i36.HashObject hashObject;

  final _i34.Key? key;

  @override
  String toString() {
    return 'SaveHashDialogRouteArgs{snapshot: $snapshot, hashObject: $hashObject, key: $key}';
  }
}

/// generated route for
/// [_i23.RenameSnapshotDialog]
class RenameSnapshotDialogRoute
    extends _i33.PageRouteInfo<RenameSnapshotDialogRouteArgs> {
  RenameSnapshotDialogRoute({
    required _i37.Snapshot snapshot,
    required _i36.HashObject hashObject,
    _i34.Key? key,
  }) : super(
          RenameSnapshotDialogRoute.name,
          path: 'rename-snapshot-dialog',
          args: RenameSnapshotDialogRouteArgs(
            snapshot: snapshot,
            hashObject: hashObject,
            key: key,
          ),
        );

  static const String name = 'RenameSnapshotDialogRoute';
}

class RenameSnapshotDialogRouteArgs {
  const RenameSnapshotDialogRouteArgs({
    required this.snapshot,
    required this.hashObject,
    this.key,
  });

  final _i37.Snapshot snapshot;

  final _i36.HashObject hashObject;

  final _i34.Key? key;

  @override
  String toString() {
    return 'RenameSnapshotDialogRouteArgs{snapshot: $snapshot, hashObject: $hashObject, key: $key}';
  }
}

/// generated route for
/// [_i24.CreateAccountType]
class CreateAccountTypeRoute extends _i33.PageRouteInfo<void> {
  const CreateAccountTypeRoute()
      : super(
          CreateAccountTypeRoute.name,
          path: 'choose-type',
        );

  static const String name = 'CreateAccountTypeRoute';
}

/// generated route for
/// [_i25.CreateAccountInfoPage]
class CreateAccountInfoRoute extends _i33.PageRouteInfo<void> {
  const CreateAccountInfoRoute()
      : super(
          CreateAccountInfoRoute.name,
          path: 'generate-random',
        );

  static const String name = 'CreateAccountInfoRoute';
}

/// generated route for
/// [_i26.CreateAccountMnemonicBackup]
class MnemonicBackupRoute extends _i33.PageRouteInfo<void> {
  const MnemonicBackupRoute()
      : super(
          MnemonicBackupRoute.name,
          path: 'create-account-mnemonic-backup',
        );

  static const String name = 'MnemonicBackupRoute';
}

/// generated route for
/// [_i27.CreateAccountMnemonicConfirm]
class MnemonicConfirmRoute extends _i33.PageRouteInfo<void> {
  const MnemonicConfirmRoute()
      : super(
          MnemonicConfirmRoute.name,
          path: 'create-account-mnemonic-confirm',
        );

  static const String name = 'MnemonicConfirmRoute';
}

/// generated route for
/// [_i28.CreateAccountCredentials]
class CreateAccountCredentialsRoute
    extends _i33.PageRouteInfo<CreateAccountCredentialsRouteArgs> {
  CreateAccountCredentialsRoute({
    required String appbarText,
    _i34.Key? key,
  }) : super(
          CreateAccountCredentialsRoute.name,
          path: 'create-account-credentials',
          args: CreateAccountCredentialsRouteArgs(
            appbarText: appbarText,
            key: key,
          ),
        );

  static const String name = 'CreateAccountCredentialsRoute';
}

class CreateAccountCredentialsRouteArgs {
  const CreateAccountCredentialsRouteArgs({
    required this.appbarText,
    this.key,
  });

  final String appbarText;

  final _i34.Key? key;

  @override
  String toString() {
    return 'CreateAccountCredentialsRouteArgs{appbarText: $appbarText, key: $key}';
  }
}

/// generated route for
/// [_i29.CreateAccountLoader]
class CreateAccountLoaderRoute extends _i33.PageRouteInfo<void> {
  const CreateAccountLoaderRoute()
      : super(
          CreateAccountLoaderRoute.name,
          path: 'create-account-loader',
        );

  static const String name = 'CreateAccountLoaderRoute';
}

/// generated route for
/// [_i30.NoStableHashDialog]
class NoStableHashDialogRoute extends _i33.PageRouteInfo<void> {
  const NoStableHashDialogRoute()
      : super(
          NoStableHashDialogRoute.name,
          path: 'no-stable-hash-dialog',
        );

  static const String name = 'NoStableHashDialogRoute';
}

/// generated route for
/// [_i31.CreateAccountFromObject]
class CreateAccountFromObjectRoute extends _i33.PageRouteInfo<void> {
  const CreateAccountFromObjectRoute()
      : super(
          CreateAccountFromObjectRoute.name,
          path: 'create-account-from-object',
        );

  static const String name = 'CreateAccountFromObjectRoute';
}

/// generated route for
/// [_i32.ImportMnemonicForm]
class ImportMnemonicFormRoute
    extends _i33.PageRouteInfo<ImportMnemonicFormRouteArgs> {
  ImportMnemonicFormRoute({_i34.Key? key})
      : super(
          ImportMnemonicFormRoute.name,
          path: 'import-mnemonic-form',
          args: ImportMnemonicFormRouteArgs(key: key),
        );

  static const String name = 'ImportMnemonicFormRoute';
}

class ImportMnemonicFormRouteArgs {
  const ImportMnemonicFormRouteArgs({this.key});

  final _i34.Key? key;

  @override
  String toString() {
    return 'ImportMnemonicFormRouteArgs{key: $key}';
  }
}
