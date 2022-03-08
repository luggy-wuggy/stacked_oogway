import 'package:charity_stacked/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';

class OogwayPaddedButton extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Color buttonColor;
  final Function onTap;

  const OogwayPaddedButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.textStyle,
    this.buttonColor = ColorTheme.kSecondaryColor,
  }) : super(key: key);

  @override
  State<OogwayPaddedButton> createState() => _OogwayPaddedButtonState();
}

class _OogwayPaddedButtonState extends State<OogwayPaddedButton> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        setState(() {
          isButtonPressed = true;
        });
      },
      onTapUp: (TapUpDetails details) async {
        setState(() {
          isButtonPressed = false;
        });
        await HapticFeedback.lightImpact();
        await widget.onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubicEmphasized,
        height: isButtonPressed ? 60 : 70,
        width: isButtonPressed ? 240 : 250,
        decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutCubicEmphasized,
          style: isButtonPressed
              ? widget.textStyle?.apply(fontSizeFactor: 0.9) ??
                  AppTextTheme.kButtonText.apply(fontSizeFactor: 0.9)
              : widget.textStyle ?? AppTextTheme.kButtonText,
          child: Text(
            widget.text,
          ),
        ),
      ),
    );
  }
}
