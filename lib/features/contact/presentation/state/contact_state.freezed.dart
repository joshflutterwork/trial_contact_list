// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<ContactGroupModel> get contactList => throw _privateConstructorUsedError;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isError,
      List<ContactGroupModel> contactList});
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
    Object? contactList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      contactList: null == contactList
          ? _value.contactList
          : contactList // ignore: cast_nullable_to_non_nullable
              as List<ContactGroupModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactStateImplCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$ContactStateImplCopyWith(
          _$ContactStateImpl value, $Res Function(_$ContactStateImpl) then) =
      __$$ContactStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isError,
      List<ContactGroupModel> contactList});
}

/// @nodoc
class __$$ContactStateImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ContactStateImpl>
    implements _$$ContactStateImplCopyWith<$Res> {
  __$$ContactStateImplCopyWithImpl(
      _$ContactStateImpl _value, $Res Function(_$ContactStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
    Object? contactList = null,
  }) {
    return _then(_$ContactStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      contactList: null == contactList
          ? _value._contactList
          : contactList // ignore: cast_nullable_to_non_nullable
              as List<ContactGroupModel>,
    ));
  }
}

/// @nodoc

class _$ContactStateImpl implements _ContactState {
  const _$ContactStateImpl(
      {this.isLoading = false,
      this.isSuccess = false,
      this.isError = false,
      final List<ContactGroupModel> contactList = const <ContactGroupModel>[]})
      : _contactList = contactList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final bool isError;
  final List<ContactGroupModel> _contactList;
  @override
  @JsonKey()
  List<ContactGroupModel> get contactList {
    if (_contactList is EqualUnmodifiableListView) return _contactList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactList);
  }

  @override
  String toString() {
    return 'ContactState(isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError, contactList: $contactList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._contactList, _contactList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSuccess, isError,
      const DeepCollectionEquality().hash(_contactList));

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      __$$ContactStateImplCopyWithImpl<_$ContactStateImpl>(this, _$identity);
}

abstract class _ContactState implements ContactState {
  const factory _ContactState(
      {final bool isLoading,
      final bool isSuccess,
      final bool isError,
      final List<ContactGroupModel> contactList}) = _$ContactStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isError;
  @override
  List<ContactGroupModel> get contactList;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
