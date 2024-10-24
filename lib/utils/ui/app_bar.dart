import 'package:flutter/material.dart';
import 'package:trial_contact_list/utils/palette.dart';

PreferredSizeWidget getAppBar({
  VoidCallback? onTap,
  List<Widget>? title,
  Widget? leadingIcon,
  double? elevation,
}) {
  return AppBar(
    backgroundColor: Palette.white,
    toolbarHeight: 130,
    leadingWidth: leadingIcon != null ? 56 : 0,
    leading: Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: InkWell(
        onTap: onTap,
        child: leadingIcon != null
            ? const Icon(
                Icons.arrow_back_ios,
                color: Palette.black,
              )
            : const SizedBox.shrink(),
      ),
    ),
    elevation: elevation ?? 0,
    title: Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: title ?? <Widget>[],
      ),
    ),
  );
}
