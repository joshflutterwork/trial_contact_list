import 'package:flutter/material.dart';
import 'package:trial_contact_list/utils/palette.dart';

class ButtonFull extends StatelessWidget {
  const ButtonFull({super.key, this.title, this.onTap});

  final String? title;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: Palette.blue,
          ),
        ),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Palette.button_color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
