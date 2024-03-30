import '../../../../core/presentation/providers/provider_utils.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../utils/tab_bar_type.dart';
part 'transaction_tabs_provider.g.dart';

@riverpod
class TransactionTabs extends _$TransactionTabs with NotifierUpdate {
  @override
  List<TabBarType> build() {
    ref.keepAliveUntilNoListeners();
    return TabBarType.values;
  }
}
