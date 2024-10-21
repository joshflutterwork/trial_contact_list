// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_group_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactGroupModelImpl _$$ContactGroupModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$ContactGroupModelImpl(
      firstLetter: json['firstLetter'] as String,
      contacts: (json['contacts'] as List<dynamic>)
          .map((dynamic e) => ContactModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContactGroupModelImplToJson(
  _$ContactGroupModelImpl instance,
) =>
    <String, dynamic>{
      'firstLetter': instance.firstLetter,
      'contacts': instance.contacts,
    };
