import '../../../../core/presentation/providers/provider_utils.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../domain/users/users.dart';
import '../../infrastructure/repository/transaction_history_repository.dart';
part 'get_users_provider.g.dart';

@riverpod
FutureOr<Users> getUsers(
  GetUsersRef ref,
) {
  final cancelToken = ref.cancelToken();
  return ref.watch(transactionHistoryRepositoryProvider).getUsers(cancelToken);
}
