import 'package:dio/dio.dart';
import '../../../../core/infrastructure/network/main_api/api_callers/main_api_facade.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../domain/transaction_history/posts/posts.dart';
import '../../domain/transaction_history/users/users.dart';
part 'transaction_remote_remote_data_source.g.dart';

@riverpod
TransactionRemoteDataSource transactionHistoryRemoteDataSource(
  TransactionHistoryRemoteDataSourceRef ref,
) =>
    TransactionRemoteDataSource(ref.watch(mainApiFacadeProvider));

class TransactionRemoteDataSource {
  TransactionRemoteDataSource(this.mainApi);
  final MainApiFacade mainApi;
  static String get getUsersPath => 'users';
  static String get getPostsPath => 'posts';

  Future<Users> getUsers(CancelToken cancelToken) async {
    final result = await mainApi.getData<List<dynamic>>(
      path: getUsersPath,
      cancelToken: cancelToken,
    );
    return Users.fromJson(result.data!);
  }

  Future<Posts> getPosts(
    CancelToken cancelToken,
  ) async {
    final result = await mainApi.getData<List<dynamic>>(
      path: getPostsPath,
    );

    return Posts.fromJson(result.data!);
  }
}
