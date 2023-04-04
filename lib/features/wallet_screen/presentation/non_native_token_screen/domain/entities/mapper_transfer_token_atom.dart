import 'package:threedpass/features/wallet_screen/domain/entities/transfer_history_ui.dart';
import 'package:threedpass/features/wallet_screen/presentation/non_native_token_screen/domain/entities/transfer_non_native_token_atom.dart';

class MapperTransferNonNativeTokenAtom {
  static TransferHistoryUI fromNonNativeTransfer({
    required final TransferNonNativeTokenAtom item,
  }) {
    return TransferHistoryUI(
      amount: item.amount,
      blockDateTime:
          DateTime.parse(item.autoGeneratedObject.blockDatetime?.value ?? ''),
      fromAddress: item.fromAddress.toString(),
      toAddress: item.toAddress.toString(),
      symbols: item.symbol,
      isFrom: item.isFrom,
      extrisincStatus: null,
    );
  }
}