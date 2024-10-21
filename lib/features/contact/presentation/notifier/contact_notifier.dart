import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_contact_list/core/di/service_locator.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_group_list.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_model.dart';
import 'package:trial_contact_list/features/contact/domain/repositories/contact_repository.dart';
import 'package:trial_contact_list/features/contact/presentation/state/contact_state.dart';

final StateNotifierProvider<ContactNotifier, ContactState> $contact =
    StateNotifierProvider<ContactNotifier, ContactState>((Ref ref) {
  return ContactNotifier(s<ContactRepository>());
});

class ContactNotifier extends StateNotifier<ContactState> {
  ContactNotifier(
    this._contactRepository,
  ) : super(
          const ContactState(),
        );

  final ContactRepository _contactRepository;

  void getContactList() async {
    try {
      final List<ContactModel> contactList =
          await _contactRepository.getContactList();

      contactList.sort(
        (ContactModel a, ContactModel b) =>
            a.firstName!.compareTo(b.firstName!),
      );

      final Map<String, List<ContactModel>> groupedContacts =
          <String, List<ContactModel>>{};

      for (final ContactModel contact in contactList) {
        final String firstLetter =
            contact.firstName!.substring(0, 1).toUpperCase();

        groupedContacts
            .putIfAbsent(firstLetter, () => <ContactModel>[])
            .add(contact);
      }

      final List<ContactGroupModel> contactGroups = groupedContacts.entries
          .map(
            (MapEntry<String, List<ContactModel>> entry) => ContactGroupModel(
              firstLetter: entry.key,
              contacts: entry.value,
            ),
          )
          .toList();
      state = state.copyWith(contactList: contactGroups);
    } catch (e) {
      state = state.copyWith(isError: true);
    }
  }
}
