import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_contact_list/features/contact/presentation/notifier/contact_notifier.dart';
import 'package:trial_contact_list/utils/palette.dart';

@RoutePage()
class ContactListPage extends ConsumerStatefulWidget {
  const ContactListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ContactListPageState();
}

class _ContactListPageState extends ConsumerState<ContactListPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read($contact.notifier).getContactList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.white,
        toolbarHeight: 130, // Custom height for the AppBar
        title: const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Contact',
                style: TextStyle(
                  color: Palette.blue,
                  fontSize: 24,
                  height: 0.1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
