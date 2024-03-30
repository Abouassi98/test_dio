import '../../../../core/presentation/providers/provider_utils.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../domain/transaction_history/posts/posts.dart';
import '../../infrastructure/repository/transaction_history_repository.dart';
part 'get_posts_provider.g.dart';

@riverpod
FutureOr<Posts> getPosts(
  GetPostsRef ref,
) {
  final cancelToken = ref.cancelToken();
  return ref.watch(transactionHistoryRepositoryProvider).getPosts(cancelToken);
}
