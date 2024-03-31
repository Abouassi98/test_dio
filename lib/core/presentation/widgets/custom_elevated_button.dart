import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.onLongPress,
    this.padding = const EdgeInsets.all(20),
    this.constraints,
    this.borderRadius,
    this.buttonColor,
    this.splashColor,
    this.isBorder = false,
    this.shadowColor,
    this.enableGradient = false,
    this.gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff413a70), Color(0xff121114)],
    ),
    this.elevation = 0,
    this.disabledBackgroundColor = const Color(0xFFC5C4CC),
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

  BorderRadius get _borderRadius => borderRadius ?? BorderRadius.circular(33);

  Color? get _buttonColor => enableGradient ? const Color(0xFF413A70) : buttonColor;

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
          border: isBorder ? Border.all(color: const Color(0xFFD4D3DB)) : null,
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
