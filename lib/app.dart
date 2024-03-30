import 'package:flutter/material.dart';
import 'core/presentation/utils/riverpod_framework.dart';
import 'transaction/presentation/screens/transaction_screen.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Test dio',
      home: const TabBarScreen(),
      debugShowCheckedModeBanner: false,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
