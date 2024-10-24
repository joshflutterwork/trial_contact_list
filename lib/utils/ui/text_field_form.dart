import 'package:flutter/material.dart';
import 'package:trial_contact_list/utils/palette.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    super.key,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.textEditingController,
  });

  final String? hint;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16.0),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Palette.lightGray, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Palette.lightGray, width: 1),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          hintStyle: const TextStyle(
            color: Palette.darkGray,
            fontWeight: FontWeight.w100,
          ),
          hintText: hint ?? '',
          fillColor: Palette.white,
        ),
        controller: textEditingController,
      ),
    );
  }
}
