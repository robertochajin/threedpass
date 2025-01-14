import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:threedpass/features/wallet_screen/domain/entities/transfer_history_ui.dart';
import 'package:threedpass/features/wallet_screen/presentation/non_native_token_screen/domain/entities/transfer_non_native_token_atom.dart';

part 'asset_history_create.g.dart';

@CopyWith()
class AssetHistoryCreate extends NonNativeTokenHistoryAtomBase {
  const AssetHistoryCreate({
    required super.blockDatetime,
    required super.extrinsicIdx,
    required super.authorAddress,
    required super.extrisincStatus,
    required super.blockNumber,
  });

  @override
  NonNativeTokenExtrinsicType get extrinsicType =>
      NonNativeTokenExtrinsicType.create;
}
