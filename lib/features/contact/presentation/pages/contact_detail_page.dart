import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_contact_list/utils/microcopy_string.dart';
import 'package:trial_contact_list/utils/palette.dart';

@RoutePage()
class ContactDetailPage extends ConsumerStatefulWidget {
  const ContactDetailPage({
    super.key,
    @PathParam('contactId') required this.contactId,
  });

  final String contactId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ContactDetailPageState();
}

class _ContactDetailPageState extends ConsumerState<ContactDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('User ID*'),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
                filled: true,
                hintStyle: const TextStyle(
                  color: Palette.darkGray,
                  fontWeight: FontWeight.w100,
                ),
                hintText: MicrocopyString.login_hint,
                fillColor: Palette.white,
              ),
            ),
          ),
          const Text('User ID*'),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
                filled: true,
                hintStyle: const TextStyle(
                  color: Palette.darkGray,
                  fontWeight: FontWeight.w100,
                ),
                hintText: MicrocopyString.login_hint,
                fillColor: Palette.white,
              ),
            ),
          ),
          const Text('User ID*'),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
                filled: true,
                hintStyle: const TextStyle(
                  color: Palette.darkGray,
                  fontWeight: FontWeight.w100,
                ),
                hintText: MicrocopyString.login_hint,
                fillColor: Palette.white,
              ),
            ),
          ),
          const Text('User ID*'),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Palette.lightGray, width: 1),
                ),
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
                filled: true,
                hintStyle: const TextStyle(
                  color: Palette.darkGray,
                  fontWeight: FontWeight.w100,
                ),
                hintText: MicrocopyString.login_hint,
                fillColor: Palette.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
