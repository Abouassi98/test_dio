import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';

class CustomFilterChipWidget extends StatelessWidget {
  const CustomFilterChipWidget({
    required this.title,
    required this.isSelected,
    super.key,
  });

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? Theme.of(context).primaryColor : Colors.white,
        border: Border.all(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          title,
          style: isSelected
              ? TextStyles.f16(context).copyWith(color: Colors.white)
              : TextStyles.f12(context),
        ),
      ),
    );
  }
}
