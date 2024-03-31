import 'package:flutter/material.dart';
import '../../../core/presentation/widgets/custom_elevated_button.dart';
import '../widgets/user_item.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../providers/get_users_provider.dart';

class UsersScreen extends HookConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersList = ref.watch(getUsersProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
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
                    return const SizedBox(height: 36);
                  },
                  itemCount: list.items.length,
                ),
              );
            },
            error: (obj, st) {
              return CustomElevatedButton(
                onPressed: () => ref.invalidate(getUsersProvider),
                child: const Text(
                  'Retry',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              );
            },
            loading: () {
              return Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      const Center(child: CircularProgressIndicator.adaptive()),
                  separatorBuilder: (context, index) => const SizedBox(height: 24),
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
