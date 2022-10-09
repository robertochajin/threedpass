// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i31;
import 'package:flutter/material.dart' as _i32;

import '../core/widgets/default_loading_dialog.dart' as _i7;
import '../core/widgets/error_page.dart' as _i4;
import '../features/accounts/presentation/pages/create_account/create_account_credentials.dart'
    as _i27;
import '../features/accounts/presentation/pages/create_account/create_account_from_object/create_account_from_object.dart'
    as _i29;
import '../features/accounts/presentation/pages/create_account/create_account_info_page.dart'
    as _i24;
import '../features/accounts/presentation/pages/create_account/create_account_loader.dart'
    as _i28;
import '../features/accounts/presentation/pages/create_account/create_account_mnemonic_backup.dart'
    as _i25;
import '../features/accounts/presentation/pages/create_account/create_account_mnemonic_confirm.dart'
    as _i26;
import '../features/accounts/presentation/pages/create_account/create_account_type.dart'
    as _i23;
import '../features/accounts/presentation/pages/create_account/create_account_wrapper.dart'
    as _i5;
import '../features/accounts/presentation/pages/create_account/import_mnemonic_form.dart'
    as _i30;
import '../features/compare_page/presentation/pages/compare_page_wrapper.dart'
    as _i18;
import '../features/hashes_list/domain/entities/hash_object.dart' as _i34;
import '../features/hashes_list/domain/entities/snapshot.dart' as _i35;
import '../features/home_page/presentation/home_page.dart' as _i1;
import '../features/preview_page/bloc/preview_page_cubit.dart' as _i36;
import '../features/preview_page/presentation/preview_page.dart' as _i17;
import '../features/preview_page/presentation/preview_page_wrapper.dart' as _i2;
import '../features/preview_page/presentation/widgets/rename_snapshot_dialog.dart'
    as _i22;
import '../features/preview_page/presentation/widgets/save_hash_dialog.dart'
    as _i21;
import '../features/preview_page/presentation/widgets/save_object_dialog/save_object_dialog.dart'
    as _i20;
import '../features/preview_page/presentation/widgets/save_top_hashes_dialog/save_top_hashes_dialog.dart'
    as _i19;
import '../features/scan_page/presentation/pages/scan_page.dart' as _i11;
import '../features/scan_page/presentation/pages/scan_page_wrapper.dart' as _i8;
import '../features/scan_page/presentation/widgets/calc_hash_loading_dialog.dart'
    as _i6;
import '../features/settings_page/presentation/pages/settings_page.dart'
    as _i10;
import '../features/wallet_screen/presentation/assets_page/remove_account_dialog.dart'
    as _i15;
import '../features/wallet_screen/presentation/recieve_page/recieve_page.dart'
    as _i14;
import '../features/wallet_screen/presentation/transfer_page/transfer_page.dart'
    as _i16;
import '../features/wallet_screen/presentation/transfer_page/transfer_page_wrapper.dart'
    as _i13;
import '../features/wallet_screen/presentation/wallet_page/wallet_page.dart'
    as _i12;
import '../features/wallet_screen/presentation/wallet_page/wallet_page_wrapper.dart'
    as _i9;
import '../features/web_wallet/presentation/pages/web_wallet_page.dart' as _i3;
import 'router.dart' as _i33;

class AppRouter extends _i31.RootStackRouter {
  AppRouter([_i32.GlobalKey<_i32.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i31.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PreviewWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<PreviewWrapperRouteArgs>();
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PreviewPageWrapper(
              hashObject: args.hashObject,
              snapshot: args.snapshot,
              key: args.key,
              createNewAnyway: args.createNewAnyway));
    },
    WebWalletRoute.name: (routeData) {
      final args = routeData.argsAs<WebWalletRouteArgs>();
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.WebWalletPage(initialUrl: args.initialUrl, key: args.key));
    },
    ErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ErrorRouteArgs>();
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ErrorPage(error: args.error, key: args.key));
    },
    CreateAccountWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CreateAccountWrapper());
    },
    CalcHashLoadingDialogRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.CalcHashLoadingWidget(),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    DefaultLoadingDialogRoute.name: (routeData) {
      final args = routeData.argsAs<DefaultLoadingDialogRouteArgs>(
          orElse: () => const DefaultLoadingDialogRouteArgs());
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.DefaultLoadingDialog(key: args.key, text: args.text),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ScanWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ScanPageWrapper());
    },
    WalletWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.WalletPageWrapper());
    },
    SettingsRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.SettingsPage());
    },
    ScanRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ScanPage());
    },
    WalletRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.WalletPage());
    },
    TransferWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.TransferPageWrapper());
    },
    RecieveRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.RecievePage());
    },
    RemoveAccountDialogRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.RemoveAccountDialog(),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    TransferRoute.name: (routeData) {
      final args = routeData.argsAs<TransferRouteArgs>(
          orElse: () => const TransferRouteArgs());
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.TransferPage(key: args.key));
    },
    PreviewRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.PreviewPage());
    },
    CompareWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<CompareWrapperRouteArgs>();
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i18.ComparePageWrapper(
              origObj: args.origObj,
              hashObject: args.hashObject,
              key: args.key));
    },
    SaveTopHashesDialogRoute.name: (routeData) {
      final args = routeData.argsAs<SaveTopHashesDialogRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i19.SaveTopHashesDialog(
              pageCubitState: args.pageCubitState, key: args.key),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    SaveObjectDialogRoute.name: (routeData) {
      final args = routeData.argsAs<SaveObjectDialogRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i20.SaveObjectDialog(snapshot: args.snapshot, key: args.key),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    SaveHashDialogRoute.name: (routeData) {
      final args = routeData.argsAs<SaveHashDialogRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i21.SaveHashDialog(
              snapshot: args.snapshot,
              hashObject: args.hashObject,
              key: args.key),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    RenameSnapshotDialogRoute.name: (routeData) {
      final args = routeData.argsAs<RenameSnapshotDialogRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i22.RenameSnapshotDialog(
              snapshot: args.snapshot,
              hashObject: args.hashObject,
              key: args.key),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAccountTypeRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.CreateAccountType());
    },
    CreateAccountInfoRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.CreateAccountInfoPage());
    },
    MnemonicBackupRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i25.CreateAccountMnemonicBackup());
    },
    MnemonicConfirmRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i26.CreateAccountMnemonicConfirm());
    },
    CreateAccountCredentialsRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.CreateAccountCredentials());
    },
    CreateAccountLoaderRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i28.CreateAccountLoader(),
          customRouteBuilder: _i33.dialogBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateAccountFromObjectRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.CreateAccountFromObject());
    },
    ImportMnemonicFormRoute.name: (routeData) {
      final args = routeData.argsAs<ImportMnemonicFormRouteArgs>(
          orElse: () => const ImportMnemonicFormRouteArgs());
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: _i30.ImportMnemonicForm(key: args.key));
    }
  };

  @override
  List<_i31.RouteConfig> get routes => [
        _i31.RouteConfig(HomeRoute.name, path: '/', children: [
          _i31.RouteConfig(ScanWrapperRoute.name,
              path: 'scan-page-wrapper',
              parent: HomeRoute.name,
              children: [
                _i31.RouteConfig(ScanRoute.name,
                    path: '', parent: ScanWrapperRoute.name)
              ]),
          _i31.RouteConfig(WalletWrapperRoute.name,
              path: 'wallet-page-wrapper',
              parent: HomeRoute.name,
              children: [
                _i31.RouteConfig(WalletRoute.name,
                    path: '', parent: WalletWrapperRoute.name),
                _i31.RouteConfig(TransferWrapperRoute.name,
                    path: 'transfer-page-wrapper',
                    parent: WalletWrapperRoute.name,
                    children: [
                      _i31.RouteConfig(TransferRoute.name,
                          path: '', parent: TransferWrapperRoute.name)
                    ]),
                _i31.RouteConfig(RecieveRoute.name,
                    path: 'recieve-page', parent: WalletWrapperRoute.name),
                _i31.RouteConfig(RemoveAccountDialogRoute.name,
                    path: 'remove-account-dialog',
                    parent: WalletWrapperRoute.name)
              ]),
          _i31.RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: HomeRoute.name)
        ]),
        _i31.RouteConfig(PreviewWrapperRoute.name,
            path: '/preview-page-wrapper',
            children: [
              _i31.RouteConfig(PreviewRoute.name,
                  path: '', parent: PreviewWrapperRoute.name),
              _i31.RouteConfig(CompareWrapperRoute.name,
                  path: 'compare-page-wrapper',
                  parent: PreviewWrapperRoute.name),
              _i31.RouteConfig(SaveTopHashesDialogRoute.name,
                  path: 'save-top-hashes-dialog',
                  parent: PreviewWrapperRoute.name),
              _i31.RouteConfig(SaveObjectDialogRoute.name,
                  path: 'save-object-dialog', parent: PreviewWrapperRoute.name),
              _i31.RouteConfig(SaveHashDialogRoute.name,
                  path: 'save-hash-dialog', parent: PreviewWrapperRoute.name),
              _i31.RouteConfig(RenameSnapshotDialogRoute.name,
                  path: 'rename-snapshot-dialog',
                  parent: PreviewWrapperRoute.name)
            ]),
        _i31.RouteConfig(WebWalletRoute.name, path: '/web-wallet-page'),
        _i31.RouteConfig(ErrorRoute.name, path: '/error-page'),
        _i31.RouteConfig(CreateAccountWrapperRoute.name,
            path: '/create-account/',
            children: [
              _i31.RouteConfig(CreateAccountTypeRoute.name,
                  path: 'choose-type', parent: CreateAccountWrapperRoute.name),
              _i31.RouteConfig(CreateAccountInfoRoute.name,
                  path: 'generate-random',
                  parent: CreateAccountWrapperRoute.name),
              _i31.RouteConfig(MnemonicBackupRoute.name,
                  path: 'create-account-mnemonic-backup',
                  parent: CreateAccountWrapperRoute.name),
              _i31.RouteConfig(MnemonicConfirmRoute.name,
                  path: 'create-account-mnemonic-confirm',
                  parent: CreateAccountWrapperRoute.name),
              _i31.RouteConfig(CreateAccountCredentialsRoute.name,
                  path: 'create-account-credentials',
                  parent: CreateAccountWrapperRoute.name),
              _i31.RouteConfig(CreateAccountLoaderRoute.name,
                  path: 'create-account-loader',
                  parent: CreateAccountWrapperRoute.name),
              _i31.RouteConfig(CreateAccountFromObjectRoute.name,
                  path: 'create-account-from-object',
                  parent: CreateAccountWrapperRoute.name),
              _i31.RouteConfig(ImportMnemonicFormRoute.name,
                  path: 'import-mnemonic-form',
                  parent: CreateAccountWrapperRoute.name)
            ]),
        _i31.RouteConfig(CalcHashLoadingDialogRoute.name,
            path: '/calc-hash-loading-widget'),
        _i31.RouteConfig(DefaultLoadingDialogRoute.name,
            path: '/default-loading-dialog')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i31.PageRouteInfo<void> {
  const HomeRoute({List<_i31.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.PreviewPageWrapper]
class PreviewWrapperRoute extends _i31.PageRouteInfo<PreviewWrapperRouteArgs> {
  PreviewWrapperRoute(
      {required _i34.HashObject? hashObject,
      required _i35.Snapshot snapshot,
      _i32.Key? key,
      bool createNewAnyway = false,
      List<_i31.PageRouteInfo>? children})
      : super(PreviewWrapperRoute.name,
            path: '/preview-page-wrapper',
            args: PreviewWrapperRouteArgs(
                hashObject: hashObject,
                snapshot: snapshot,
                key: key,
                createNewAnyway: createNewAnyway),
            initialChildren: children);

  static const String name = 'PreviewWrapperRoute';
}

class PreviewWrapperRouteArgs {
  const PreviewWrapperRouteArgs(
      {required this.hashObject,
      required this.snapshot,
      this.key,
      this.createNewAnyway = false});

  final _i34.HashObject? hashObject;

  final _i35.Snapshot snapshot;

  final _i32.Key? key;

  final bool createNewAnyway;

  @override
  String toString() {
    return 'PreviewWrapperRouteArgs{hashObject: $hashObject, snapshot: $snapshot, key: $key, createNewAnyway: $createNewAnyway}';
  }
}

/// generated route for
/// [_i3.WebWalletPage]
class WebWalletRoute extends _i31.PageRouteInfo<WebWalletRouteArgs> {
  WebWalletRoute({required String initialUrl, _i32.Key? key})
      : super(WebWalletRoute.name,
            path: '/web-wallet-page',
            args: WebWalletRouteArgs(initialUrl: initialUrl, key: key));

  static const String name = 'WebWalletRoute';
}

class WebWalletRouteArgs {
  const WebWalletRouteArgs({required this.initialUrl, this.key});

  final String initialUrl;

  final _i32.Key? key;

  @override
  String toString() {
    return 'WebWalletRouteArgs{initialUrl: $initialUrl, key: $key}';
  }
}

/// generated route for
/// [_i4.ErrorPage]
class ErrorRoute extends _i31.PageRouteInfo<ErrorRouteArgs> {
  ErrorRoute({required Object error, _i32.Key? key})
      : super(ErrorRoute.name,
            path: '/error-page', args: ErrorRouteArgs(error: error, key: key));

  static const String name = 'ErrorRoute';
}

class ErrorRouteArgs {
  const ErrorRouteArgs({required this.error, this.key});

  final Object error;

  final _i32.Key? key;

  @override
  String toString() {
    return 'ErrorRouteArgs{error: $error, key: $key}';
  }
}

/// generated route for
/// [_i5.CreateAccountWrapper]
class CreateAccountWrapperRoute extends _i31.PageRouteInfo<void> {
  const CreateAccountWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(CreateAccountWrapperRoute.name,
            path: '/create-account/', initialChildren: children);

  static const String name = 'CreateAccountWrapperRoute';
}

/// generated route for
/// [_i6.CalcHashLoadingWidget]
class CalcHashLoadingDialogRoute extends _i31.PageRouteInfo<void> {
  const CalcHashLoadingDialogRoute()
      : super(CalcHashLoadingDialogRoute.name,
            path: '/calc-hash-loading-widget');

  static const String name = 'CalcHashLoadingDialogRoute';
}

/// generated route for
/// [_i7.DefaultLoadingDialog]
class DefaultLoadingDialogRoute
    extends _i31.PageRouteInfo<DefaultLoadingDialogRouteArgs> {
  DefaultLoadingDialogRoute({_i32.Key? key, String? text})
      : super(DefaultLoadingDialogRoute.name,
            path: '/default-loading-dialog',
            args: DefaultLoadingDialogRouteArgs(key: key, text: text));

  static const String name = 'DefaultLoadingDialogRoute';
}

class DefaultLoadingDialogRouteArgs {
  const DefaultLoadingDialogRouteArgs({this.key, this.text});

  final _i32.Key? key;

  final String? text;

  @override
  String toString() {
    return 'DefaultLoadingDialogRouteArgs{key: $key, text: $text}';
  }
}

/// generated route for
/// [_i8.ScanPageWrapper]
class ScanWrapperRoute extends _i31.PageRouteInfo<void> {
  const ScanWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(ScanWrapperRoute.name,
            path: 'scan-page-wrapper', initialChildren: children);

  static const String name = 'ScanWrapperRoute';
}

/// generated route for
/// [_i9.WalletPageWrapper]
class WalletWrapperRoute extends _i31.PageRouteInfo<void> {
  const WalletWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(WalletWrapperRoute.name,
            path: 'wallet-page-wrapper', initialChildren: children);

  static const String name = 'WalletWrapperRoute';
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i31.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i11.ScanPage]
class ScanRoute extends _i31.PageRouteInfo<void> {
  const ScanRoute() : super(ScanRoute.name, path: '');

  static const String name = 'ScanRoute';
}

/// generated route for
/// [_i12.WalletPage]
class WalletRoute extends _i31.PageRouteInfo<void> {
  const WalletRoute() : super(WalletRoute.name, path: '');

  static const String name = 'WalletRoute';
}

/// generated route for
/// [_i13.TransferPageWrapper]
class TransferWrapperRoute extends _i31.PageRouteInfo<void> {
  const TransferWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(TransferWrapperRoute.name,
            path: 'transfer-page-wrapper', initialChildren: children);

  static const String name = 'TransferWrapperRoute';
}

/// generated route for
/// [_i14.RecievePage]
class RecieveRoute extends _i31.PageRouteInfo<void> {
  const RecieveRoute() : super(RecieveRoute.name, path: 'recieve-page');

  static const String name = 'RecieveRoute';
}

/// generated route for
/// [_i15.RemoveAccountDialog]
class RemoveAccountDialogRoute extends _i31.PageRouteInfo<void> {
  const RemoveAccountDialogRoute()
      : super(RemoveAccountDialogRoute.name, path: 'remove-account-dialog');

  static const String name = 'RemoveAccountDialogRoute';
}

/// generated route for
/// [_i16.TransferPage]
class TransferRoute extends _i31.PageRouteInfo<TransferRouteArgs> {
  TransferRoute({_i32.Key? key})
      : super(TransferRoute.name, path: '', args: TransferRouteArgs(key: key));

  static const String name = 'TransferRoute';
}

class TransferRouteArgs {
  const TransferRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'TransferRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.PreviewPage]
class PreviewRoute extends _i31.PageRouteInfo<void> {
  const PreviewRoute() : super(PreviewRoute.name, path: '');

  static const String name = 'PreviewRoute';
}

/// generated route for
/// [_i18.ComparePageWrapper]
class CompareWrapperRoute extends _i31.PageRouteInfo<CompareWrapperRouteArgs> {
  CompareWrapperRoute(
      {required _i35.Snapshot origObj,
      required _i34.HashObject hashObject,
      _i32.Key? key})
      : super(CompareWrapperRoute.name,
            path: 'compare-page-wrapper',
            args: CompareWrapperRouteArgs(
                origObj: origObj, hashObject: hashObject, key: key));

  static const String name = 'CompareWrapperRoute';
}

class CompareWrapperRouteArgs {
  const CompareWrapperRouteArgs(
      {required this.origObj, required this.hashObject, this.key});

  final _i35.Snapshot origObj;

  final _i34.HashObject hashObject;

  final _i32.Key? key;

  @override
  String toString() {
    return 'CompareWrapperRouteArgs{origObj: $origObj, hashObject: $hashObject, key: $key}';
  }
}

/// generated route for
/// [_i19.SaveTopHashesDialog]
class SaveTopHashesDialogRoute
    extends _i31.PageRouteInfo<SaveTopHashesDialogRouteArgs> {
  SaveTopHashesDialogRoute(
      {required _i36.PreviewPageCubitState pageCubitState, _i32.Key? key})
      : super(SaveTopHashesDialogRoute.name,
            path: 'save-top-hashes-dialog',
            args: SaveTopHashesDialogRouteArgs(
                pageCubitState: pageCubitState, key: key));

  static const String name = 'SaveTopHashesDialogRoute';
}

class SaveTopHashesDialogRouteArgs {
  const SaveTopHashesDialogRouteArgs({required this.pageCubitState, this.key});

  final _i36.PreviewPageCubitState pageCubitState;

  final _i32.Key? key;

  @override
  String toString() {
    return 'SaveTopHashesDialogRouteArgs{pageCubitState: $pageCubitState, key: $key}';
  }
}

/// generated route for
/// [_i20.SaveObjectDialog]
class SaveObjectDialogRoute
    extends _i31.PageRouteInfo<SaveObjectDialogRouteArgs> {
  SaveObjectDialogRoute({required _i35.Snapshot snapshot, _i32.Key? key})
      : super(SaveObjectDialogRoute.name,
            path: 'save-object-dialog',
            args: SaveObjectDialogRouteArgs(snapshot: snapshot, key: key));

  static const String name = 'SaveObjectDialogRoute';
}

class SaveObjectDialogRouteArgs {
  const SaveObjectDialogRouteArgs({required this.snapshot, this.key});

  final _i35.Snapshot snapshot;

  final _i32.Key? key;

  @override
  String toString() {
    return 'SaveObjectDialogRouteArgs{snapshot: $snapshot, key: $key}';
  }
}

/// generated route for
/// [_i21.SaveHashDialog]
class SaveHashDialogRoute extends _i31.PageRouteInfo<SaveHashDialogRouteArgs> {
  SaveHashDialogRoute(
      {required _i35.Snapshot snapshot,
      required _i34.HashObject hashObject,
      _i32.Key? key})
      : super(SaveHashDialogRoute.name,
            path: 'save-hash-dialog',
            args: SaveHashDialogRouteArgs(
                snapshot: snapshot, hashObject: hashObject, key: key));

  static const String name = 'SaveHashDialogRoute';
}

class SaveHashDialogRouteArgs {
  const SaveHashDialogRouteArgs(
      {required this.snapshot, required this.hashObject, this.key});

  final _i35.Snapshot snapshot;

  final _i34.HashObject hashObject;

  final _i32.Key? key;

  @override
  String toString() {
    return 'SaveHashDialogRouteArgs{snapshot: $snapshot, hashObject: $hashObject, key: $key}';
  }
}

/// generated route for
/// [_i22.RenameSnapshotDialog]
class RenameSnapshotDialogRoute
    extends _i31.PageRouteInfo<RenameSnapshotDialogRouteArgs> {
  RenameSnapshotDialogRoute(
      {required _i35.Snapshot snapshot,
      required _i34.HashObject hashObject,
      _i32.Key? key})
      : super(RenameSnapshotDialogRoute.name,
            path: 'rename-snapshot-dialog',
            args: RenameSnapshotDialogRouteArgs(
                snapshot: snapshot, hashObject: hashObject, key: key));

  static const String name = 'RenameSnapshotDialogRoute';
}

class RenameSnapshotDialogRouteArgs {
  const RenameSnapshotDialogRouteArgs(
      {required this.snapshot, required this.hashObject, this.key});

  final _i35.Snapshot snapshot;

  final _i34.HashObject hashObject;

  final _i32.Key? key;

  @override
  String toString() {
    return 'RenameSnapshotDialogRouteArgs{snapshot: $snapshot, hashObject: $hashObject, key: $key}';
  }
}

/// generated route for
/// [_i23.CreateAccountType]
class CreateAccountTypeRoute extends _i31.PageRouteInfo<void> {
  const CreateAccountTypeRoute()
      : super(CreateAccountTypeRoute.name, path: 'choose-type');

  static const String name = 'CreateAccountTypeRoute';
}

/// generated route for
/// [_i24.CreateAccountInfoPage]
class CreateAccountInfoRoute extends _i31.PageRouteInfo<void> {
  const CreateAccountInfoRoute()
      : super(CreateAccountInfoRoute.name, path: 'generate-random');

  static const String name = 'CreateAccountInfoRoute';
}

/// generated route for
/// [_i25.CreateAccountMnemonicBackup]
class MnemonicBackupRoute extends _i31.PageRouteInfo<void> {
  const MnemonicBackupRoute()
      : super(MnemonicBackupRoute.name, path: 'create-account-mnemonic-backup');

  static const String name = 'MnemonicBackupRoute';
}

/// generated route for
/// [_i26.CreateAccountMnemonicConfirm]
class MnemonicConfirmRoute extends _i31.PageRouteInfo<void> {
  const MnemonicConfirmRoute()
      : super(MnemonicConfirmRoute.name,
            path: 'create-account-mnemonic-confirm');

  static const String name = 'MnemonicConfirmRoute';
}

/// generated route for
/// [_i27.CreateAccountCredentials]
class CreateAccountCredentialsRoute extends _i31.PageRouteInfo<void> {
  const CreateAccountCredentialsRoute()
      : super(CreateAccountCredentialsRoute.name,
            path: 'create-account-credentials');

  static const String name = 'CreateAccountCredentialsRoute';
}

/// generated route for
/// [_i28.CreateAccountLoader]
class CreateAccountLoaderRoute extends _i31.PageRouteInfo<void> {
  const CreateAccountLoaderRoute()
      : super(CreateAccountLoaderRoute.name, path: 'create-account-loader');

  static const String name = 'CreateAccountLoaderRoute';
}

/// generated route for
/// [_i29.CreateAccountFromObject]
class CreateAccountFromObjectRoute extends _i31.PageRouteInfo<void> {
  const CreateAccountFromObjectRoute()
      : super(CreateAccountFromObjectRoute.name,
            path: 'create-account-from-object');

  static const String name = 'CreateAccountFromObjectRoute';
}

/// generated route for
/// [_i30.ImportMnemonicForm]
class ImportMnemonicFormRoute
    extends _i31.PageRouteInfo<ImportMnemonicFormRouteArgs> {
  ImportMnemonicFormRoute({_i32.Key? key})
      : super(ImportMnemonicFormRoute.name,
            path: 'import-mnemonic-form',
            args: ImportMnemonicFormRouteArgs(key: key));

  static const String name = 'ImportMnemonicFormRoute';
}

class ImportMnemonicFormRouteArgs {
  const ImportMnemonicFormRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'ImportMnemonicFormRouteArgs{key: $key}';
  }
}
