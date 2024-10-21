import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_group_list.dart';

part 'contact_state.freezed.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isError,
    @Default(<ContactGroupModel>[]) List<ContactGroupModel> contactList,
  }) = _ContactState;
}
