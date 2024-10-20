import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';

part 'contact_model.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const ContactModel._();

  const factory ContactModel({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? dob,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}
