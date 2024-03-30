import '../../../core/presentation/widgets/custom_elevated_button.dart';
import '../widgets/user_item.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../components/transaction_item_loading.dart';
import '../providers/get_users_provider.dart';

class UsersScreen extends HookConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersList = ref.watch(getUsersProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.screenPaddingH16,
        vertical: Sizes.marginV16,
      ),
      child: Column(
        children: [
          usersList.when(
            data: (list) {
              return Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return BokRechargeItem(
                      item: list.items[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: Sizes.marginV36);
                  },
                  itemCount: list.items.length,
                ),
              );
            },
            error: (obj, st) {
              return CustomElevatedButton(
                onPressed: () => ref.invalidate(getUsersProvider),
                child: Text(
                  'retry',
                  textAlign: TextAlign.center,
                  style: TextStyles.coloredElevatedButton,
                ),
              );
            },
            loading: () {
              return Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      const TransactionItemLoadingWidget(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: Sizes.marginV24),
                  itemCount: 3,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
