import 'package:dio/dio.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../domain/posts/posts.dart';
import '../../domain/users/users.dart';
import '../data_sourse/transaction_remote_remote_data_source.dart';

part 'transaction_history_repository.g.dart';

@riverpod
TransactionHistoryRepository transactionHistoryRepository(
  TransactionHistoryRepositoryRef ref,
) =>
    TransactionHistoryRepository(
      ref.watch(transactionHistoryRemoteDataSourceProvider),
    );

class TransactionHistoryRepository {
  TransactionHistoryRepository(
    this.transactionHistoryDataSource,
  );
  final TransactionRemoteDataSource transactionHistoryDataSource;

  Future<Users> getUsers(
    CancelToken cancelToken,
  ) async =>
      transactionHistoryDataSource.getUsers(cancelToken);

  Future<Posts> getPosts(
    CancelToken cancelToken,
  ) async =>
      transactionHistoryDataSource.getPosts(cancelToken);
}
