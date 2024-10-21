import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_contact_list/core/di/service_locator.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_group_list.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_model.dart';
import 'package:trial_contact_list/features/contact/presentation/notifier/contact_notifier.dart';
import 'package:trial_contact_list/features/contact/presentation/state/contact_state.dart';
import 'package:trial_contact_list/router/router.dart';
import 'package:trial_contact_list/router/router.gr.dart';
import 'package:trial_contact_list/utils/microcopy_string.dart';
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
    super.initState();
    ref.read($contact.notifier).getContactList();
  }

  @override
  Widget build(BuildContext context) {
    final List<ContactGroupModel> contactList = ref.watch(
      $contact.select((ContactState state) => state.contactList),
    );

    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 130, // Custom height for the AppBar
        leadingWidth: 0,
        leading: const SizedBox.shrink(),
        title: const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'My Contacts',
                style: TextStyle(
                  color: Palette.black,
                  fontSize: 23,
                  height: 0.1,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, top: 16, right: 16.0, bottom: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
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
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Palette.lightGray, width: 1),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    color: Palette.darkGray,
                    fontWeight: FontWeight.w100,
                  ),
                  hintText: MicrocopyString.contact_search,
                  fillColor: Palette.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: contactList.length,
                itemBuilder: (BuildContext context, int index) {
                  final ContactGroupModel group = contactList[index];
                  return ContactGroupExpansionTile(group: group);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactGroupExpansionTile extends StatelessWidget {
  const ContactGroupExpansionTile({super.key, required this.group});
  final ContactGroupModel group;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            group.firstLetter,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Palette.blue,
              height: 0.1,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            height: 1,
            color: Palette.darkGray,
          ),
        ],
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide.none, // Remove the border around the tile
      ),
      initiallyExpanded: true,
      showTrailingIcon: false,
      children: group.contacts.map((ContactModel contact) {
        return InkWell(
          onTap: () async {
            await s<AppRouter>()
                .push(ContactDetailRoute(contactId: contact.id ?? ''));
          },
          child: ListTile(
            enabled: true,
            title: Text(
              contact.firstName ?? '',
              style: const TextStyle(height: 0.1),
            ),
          ),
        );
      }).toList(),
    );
  }
}
