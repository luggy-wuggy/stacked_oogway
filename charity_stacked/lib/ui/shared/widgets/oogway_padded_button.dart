import 'package:charity_stacked/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OogwayPaddedButton extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Color buttonColor;
  final Function onTap;
  final bool? isButtonPressable;

  const OogwayPaddedButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.textStyle,
    this.isButtonPressable,
    this.buttonColor = ColorTheme.kSecondaryColor,
  }) : super(key: key);

  @override
  State<OogwayPaddedButton> createState() => _OogwayPaddedButtonState();
}

class _OogwayPaddedButtonState extends State<OogwayPaddedButton> {
  bool isButtonPressed = false;
  static const double buttonHeight = 70;
  static const double buttonWidth = 250;
  static const double scaleFx = 0.95;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      alignment: Alignment.center,
      child: GestureDetector(
        onTapCancel: () {
          if (widget.isButtonPressable ?? true) {
            setState(() {
              isButtonPressed = false;
            });
          }
        },
        onTapDown: (TapDownDetails details) {
          if (widget.isButtonPressable ?? true) {
            setState(() {
              isButtonPressed = true;
            });
          }
        },
        onTapUp: (TapUpDetails details) async {
          if (widget.isButtonPressable ?? true) {
            setState(() {
              isButtonPressed = false;
            });
            await HapticFeedback.lightImpact();
            await widget.onTap();
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOutCubicEmphasized,
          height: isButtonPressed ? (buttonHeight * scaleFx) : buttonHeight,
          width: isButtonPressed ? (buttonWidth * scaleFx) : buttonWidth,
          decoration: BoxDecoration(
            color: widget.isButtonPressable ?? true
                ? widget.buttonColor
                : widget.buttonColor.withOpacity(0.55),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          alignment: Alignment.center,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOutCubicEmphasized,
            style: isButtonPressed
                ? widget.textStyle?.apply(fontSizeFactor: scaleFx) ??
                    AppTextTheme.kButtonText.apply(fontSizeFactor: scaleFx)
                : widget.textStyle ?? AppTextTheme.kButtonText,
            child: Text(
              widget.text,
            ),
          ),
        ),
      ),
    );
  }
}
