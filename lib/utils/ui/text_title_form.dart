import 'package:flutter/material.dart';
import 'package:trial_contact_list/utils/palette.dart';

class TextTitleForm extends StatelessWidget {
  const TextTitleForm({super.key, this.title, this.mandatory = false});

  final String? title;
  final bool mandatory;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title ?? '',
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Palette.black,
          fontSize: 14,
        ),
        children: mandatory
            ? const <TextSpan>[
                TextSpan(
                  text: ' *',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Palette.red,
                    fontSize: 16,
                  ),
                ),
              ]
            : const <TextSpan>[],
      ),
    );
  }
}
