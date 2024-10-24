import 'package:flutter/material.dart';
import 'package:trial_contact_list/utils/palette.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({super.key, this.title, this.onTap});

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
            fontWeight: FontWeight.w400,
            color: Palette.red,
          ),
        ),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              width: 1,
              color: Palette.red,
            ),
          ),
        ),
      ),
    );
  }
}
