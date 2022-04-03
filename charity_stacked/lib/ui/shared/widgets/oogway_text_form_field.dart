import 'package:charity_stacked/common/styles.dart';
import 'package:flutter/material.dart';

class OogwayTextFormField extends StatefulWidget {
  final String? label;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;

  const OogwayTextFormField({
    Key? key,
    this.label,
    this.onChanged,
    this.focusNode,
  }) : super(key: key);

  @override
  State<OogwayTextFormField> createState() => _OogwayTextFormFieldState();
}

class _OogwayTextFormFieldState extends State<OogwayTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        cursorColor: ColorTheme.kSecondaryColor,
        style: AppTextTheme.kTextHeader2,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(24),
          fillColor: ColorTheme.kOpaquePrimaryColor,
          filled: true,
          label: Center(
              child: Text(
            widget.label ?? "",
            style: AppTextTheme.kTextContent,
          )),
          alignLabelWithHint: true,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: ColorTheme.kOpaquePrimaryColor,
              width: 3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: ColorTheme.kOpaquePrimaryColor,
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
