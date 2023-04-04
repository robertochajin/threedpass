
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:super_core/super_core.dart';
import 'package:threedp_graphql/features/tokens_events_history/domain/extrisincs_request_params.dart';
import 'package:threedpass/features/wallet_screen/presentation/non_native_token_screen/domain/entities/transfer_non_native_token_atom.dart';
import 'package:threedpass/features/wallet_screen/presentation/non_native_token_screen/domain/entities/transfer_non_native_tokens_dto.dart';
import 'package:threedpass/features/wallet_screen/presentation/non_native_token_screen/domain/usecases/get_extrinsics.dart';

class GetExtrinsicsCubit extends Cubit<void> {
  GetExtrinsicsCubit({
    required this.getExtrinsics,
  }) : super(null) {
    pagingController = PagingController(firstPageKey: '1')
      ..addPageRequestListener((final String pageKey) {
        nextPage(pageKey);
      });
  }

  late final PagingController<String, TransferNonNativeTokenAtom>
      pagingController;
  final GetExtrinsics getExtrinsics;

  /// Override this method and call proper UseCase.
  Future<Either<Failure, TransfersNonNativeTokenDTO>> getData(
    final String pageKey,
  ) {
    return getExtrinsics.call(
      GetExtrisincsParams(
        pageKey: pageKey,
        // TODO SET PARAMS
      ),
    );
  }

  Future<void> nextPage(
    final String pageKey,
  ) async {
    final queryRes = await getData(pageKey);
    queryRes.when(
      left: (final e) {
        pagingController.error = e;
        // final b = 1 + 1;
      },
      right: (final data) {
        if (data.objects.isEmpty) {
          pagingController.appendLastPage(data.objects);
        } else {
          pagingController.appendPage(data.objects, data.nextPageKey);
        }
      },
    );
  }
}