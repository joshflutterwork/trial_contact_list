import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trial_contact_list/features/contact/data/models/contact_model.dart';

part 'contact_group_list.freezed.dart';

part 'contact_group_list.g.dart';

@freezed
class ContactGroupModel with _$ContactGroupModel {
  const factory ContactGroupModel({
    required String firstLetter,
    required List<ContactModel> contacts,
  }) = _ContactGroupModel;

  factory ContactGroupModel.fromJson(Map<String, dynamic> json) =>
      _$ContactGroupModelFromJson(json);
}
