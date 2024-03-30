import 'package:flutter/material.dart';
import '../../core_features/theme/presentation/utils/app_static_colors.dart';
import '../styles/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onPressed,
    required this.child,
    this.onLongPress,
    this.padding = const EdgeInsets.all(20),
    this.constraints,
    this.borderRadius,
    this.buttonColor,
    this.splashColor,
    this.isBorder = false,
    this.shadowColor,
    this.enableGradient = false,
    this.gradient = AppStaticColors.primaryIngredientColor,
    this.elevation = 0,
    super.key,
    this.disabledBackgroundColor = AppStaticColors.darkGrey,
  });

  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final BoxConstraints? constraints;
  final BorderRadius? borderRadius;
  final Color? buttonColor;
  final Color? disabledBackgroundColor;
  final Color? splashColor;
  final Color? shadowColor;
  final bool enableGradient;
  final Gradient? gradient;
  final double elevation;
  final bool isBorder;

  BorderRadius get _borderRadius =>
      borderRadius ?? BorderRadius.circular(Sizes.buttonR32);

  Color? get _buttonColor =>
      enableGradient ? const Color(0xFF413A70) : buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: _borderRadius),
        backgroundColor: const Color(0xFF413A70),
        disabledBackgroundColor: disabledBackgroundColor,
        foregroundColor: splashColor,
        shadowColor: shadowColor,
        elevation: elevation,
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          border:
              isBorder ? Border.all(color: AppStaticColors.darkWhite) : null,
          gradient: enableGradient ? gradient : null,
        ),
        child: Container(
          width: double.infinity,
          padding: padding,
          constraints: constraints,
          child: child,
        ),
      ),
    );
  }
}
