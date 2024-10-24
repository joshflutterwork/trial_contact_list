import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_model.dart';
import 'package:trial_contact_list/features/contact/presentation/notifier/contact_notifier.dart';
import 'package:trial_contact_list/features/contact/presentation/state/contact_state.dart';
import 'package:trial_contact_list/utils/palette.dart';
import 'package:trial_contact_list/utils/ui/app_bar.dart';
import 'package:trial_contact_list/utils/ui/button_full.dart';
import 'package:trial_contact_list/utils/ui/button_outline.dart';
import 'package:trial_contact_list/utils/ui/text_field_form.dart';
import 'package:trial_contact_list/utils/ui/text_title_form.dart';

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
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final ContactModel? contactModel = ref.read(
        $contact.select((ContactState state) => state.contactModel),
      );

      if (contactModel != null) {
        _firstNameController.text = contactModel.firstName ?? '';
        _lastNameController.text = contactModel.lastName ?? '';
        _emailController.text = contactModel.email ?? '';
        _dobController.text = contactModel.dob ?? '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: getAppBar(
        onTap: () {
          Navigator.of(context).pop();
        },
        title: <Widget>[
          const Text(
            'Contact Details',
            style: TextStyle(
              color: Palette.black,
              fontSize: 23,
              height: 0.1,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
        leadingIcon: const SizedBox.shrink(),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 40.0,
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 40,
                ),
                backgroundColor: Palette.blue,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  const Text(
                    'Main Information',
                    style: TextStyle(
                      color: Palette.blue,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const TextTitleForm(
                    mandatory: true,
                    title: 'First Name',
                  ),
                  TextFieldForm(
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.blue,
                    ),
                    hint: 'Enter first name...',
                    textEditingController: _firstNameController,
                  ),
                  const TextTitleForm(
                    mandatory: true,
                    title: 'Last Name',
                  ),
                  TextFieldForm(
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.blue,
                    ),
                    hint: 'Enter last name...',
                    textEditingController: _lastNameController,
                  ),
                  const Text(
                    'Sub Information',
                    style: TextStyle(
                      color: Palette.blue,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const TextTitleForm(
                    mandatory: false,
                    title: 'Email',
                  ),
                  TextFieldForm(
                    prefixIcon: const Icon(
                      Icons.mail_outline_outlined,
                      color: Colors.blue,
                    ),
                    hint: 'Enter email...',
                    textEditingController: _emailController,
                  ),
                  const TextTitleForm(
                    mandatory: false,
                    title: 'Date of Birth',
                  ),
                  TextFieldForm(
                    prefixIcon: const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.blue,
                    ),
                    hint: 'Enter birthday...',
                    textEditingController: _dobController,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  ButtonFull(
                    title: 'Save',
                    onTap: () {},
                  ),
                  ButtonFull(
                    title: 'Update',
                    onTap: () {},
                  ),
                  ButtonOutline(
                    title: 'Remove',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
