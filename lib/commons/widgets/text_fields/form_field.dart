import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? inputType;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  const FormInput({
    Key? key,
    required this.controller,
    this.hintText,
    this.maxLength,
    this.maxLines,
    this.inputType,
    this.suffix,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      maxLength: maxLength,
      maxLines: maxLines,
      keyboardType: inputType,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        fillColor: ColorName.illusion,
        filled: true,
        suffix: suffix,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 16.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white10,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
