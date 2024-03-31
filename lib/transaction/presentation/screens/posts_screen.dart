import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../core/presentation/widgets/custom_elevated_button.dart';
import '../providers/get_posts_provider.dart';
import '../widgets/post_item.dart';

class PostsScreen extends HookConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsList = ref.watch(getPostsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          transactionsList.when(
            data: (list) {
              return Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return TransactionItem(
                      item: list.items[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 24);
                  },
                  itemCount: list.items.length,
                ),
              );
            },
            error: (obj, st) {
              return Container(
                height: 160,
                alignment: Alignment.center,
                child: CustomElevatedButton(
                  onPressed: () => ref.invalidate(getPostsProvider),
                  child: const Text(
                    'Retry',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            loading: () {
              return Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      const Center(child: CircularProgressIndicator.adaptive()),
                  separatorBuilder: (context, index) => const SizedBox(height: 24),
                  itemCount: 4,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
