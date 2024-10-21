// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_group_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactGroupModel _$ContactGroupModelFromJson(Map<String, dynamic> json) {
  return _ContactGroupModel.fromJson(json);
}

/// @nodoc
mixin _$ContactGroupModel {
  String get firstLetter => throw _privateConstructorUsedError;
  List<ContactModel> get contacts => throw _privateConstructorUsedError;

  /// Serializes this ContactGroupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactGroupModelCopyWith<ContactGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactGroupModelCopyWith<$Res> {
  factory $ContactGroupModelCopyWith(
          ContactGroupModel value, $Res Function(ContactGroupModel) then) =
      _$ContactGroupModelCopyWithImpl<$Res, ContactGroupModel>;
  @useResult
  $Res call({String firstLetter, List<ContactModel> contacts});
}

/// @nodoc
class _$ContactGroupModelCopyWithImpl<$Res, $Val extends ContactGroupModel>
    implements $ContactGroupModelCopyWith<$Res> {
  _$ContactGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstLetter = null,
    Object? contacts = null,
  }) {
    return _then(_value.copyWith(
      firstLetter: null == firstLetter
          ? _value.firstLetter
          : firstLetter // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactGroupModelImplCopyWith<$Res>
    implements $ContactGroupModelCopyWith<$Res> {
  factory _$$ContactGroupModelImplCopyWith(_$ContactGroupModelImpl value,
          $Res Function(_$ContactGroupModelImpl) then) =
      __$$ContactGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstLetter, List<ContactModel> contacts});
}

/// @nodoc
class __$$ContactGroupModelImplCopyWithImpl<$Res>
    extends _$ContactGroupModelCopyWithImpl<$Res, _$ContactGroupModelImpl>
    implements _$$ContactGroupModelImplCopyWith<$Res> {
  __$$ContactGroupModelImplCopyWithImpl(_$ContactGroupModelImpl _value,
      $Res Function(_$ContactGroupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstLetter = null,
    Object? contacts = null,
  }) {
    return _then(_$ContactGroupModelImpl(
      firstLetter: null == firstLetter
          ? _value.firstLetter
          : firstLetter // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactGroupModelImpl implements _ContactGroupModel {
  const _$ContactGroupModelImpl(
      {required this.firstLetter, required final List<ContactModel> contacts})
      : _contacts = contacts;

  factory _$ContactGroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactGroupModelImplFromJson(json);

  @override
  final String firstLetter;
  final List<ContactModel> _contacts;
  @override
  List<ContactModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactGroupModel(firstLetter: $firstLetter, contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactGroupModelImpl &&
            (identical(other.firstLetter, firstLetter) ||
                other.firstLetter == firstLetter) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstLetter, const DeepCollectionEquality().hash(_contacts));

  /// Create a copy of ContactGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactGroupModelImplCopyWith<_$ContactGroupModelImpl> get copyWith =>
      __$$ContactGroupModelImplCopyWithImpl<_$ContactGroupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactGroupModelImplToJson(
      this,
    );
  }
}

abstract class _ContactGroupModel implements ContactGroupModel {
  const factory _ContactGroupModel(
      {required final String firstLetter,
      required final List<ContactModel> contacts}) = _$ContactGroupModelImpl;

  factory _ContactGroupModel.fromJson(Map<String, dynamic> json) =
      _$ContactGroupModelImpl.fromJson;

  @override
  String get firstLetter;
  @override
  List<ContactModel> get contacts;

  /// Create a copy of ContactGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactGroupModelImplCopyWith<_$ContactGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
