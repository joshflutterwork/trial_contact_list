import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_contact_list/core/di/service_locator.dart';
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
      state = state.copyWith(contactList: contactList);
    } catch (e) {
      state = state.copyWith(isError: true);
    }
  }
}
