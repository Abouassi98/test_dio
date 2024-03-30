// import 'package:flutter/material.dart';
// import '../../core_features/theme/presentation/utils/app_static_colors.dart';
// import '../providers/filter_chip.dart';
// import '../styles/styles.dart';
// import '../utils/riverpod_framework.dart';

// class CustomFilterChip extends ConsumerStatefulWidget {
//   const CustomFilterChip({
//     required this.categories,
//     required this.firstItem,
//     super.key,
//   });
//   final List<String> categories;
//   final String firstItem;

//   @override
//   ConsumerState<CustomFilterChip> createState() => _CustomFilterChipState();
// }

// class _CustomFilterChipState extends ConsumerState<CustomFilterChip> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 45,
//       child: ListView.separated(
//         padding: EdgeInsets.zero,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return FilterChip(
//             showCheckmark: false,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(Sizes.buttonR32),
//               side: ref.watch(changeValueProvider) != index
//                   ? const BorderSide(
//                       color: AppStaticColors.darkWhite,
//                     )
//                   : BorderSide.none,
//             ),
//             selectedColor: AppStaticColors.primary,
//             backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//             padding: const EdgeInsets.symmetric(
//               vertical: Sizes.marginV12,
//               horizontal: Sizes.marginH20,
//             ),
//             label: Text(
//               widget.categories[index],
//               textAlign: TextAlign.center,
//             ),
//             labelStyle: TextStyles.f14(context).copyWith(
//               fontWeight: FontStyles.fontWeightNormal,
//               color: ref.watch(changeValueProvider) == index ? AppStaticColors.white : null,
//             ),
//             selected: ref.watch(changeValueProvider) == index,
//             onSelected: (isSelected) {
//               ref.watch(changeValueProvider.notifier).update((state) => index);
//             },
//           );
//         },
//         separatorBuilder: (context, index) {
//           return const SizedBox(
//             width: Sizes.marginH12,
//           );
//         },
//         itemCount: widget.categories.length,
//       ),
//     );
//   }
// }
