// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activePageIndex) changeActivePage,
    required TResult Function(UserAccount userAccount) addUserAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int activePageIndex)? changeActivePage,
    TResult? Function(UserAccount userAccount)? addUserAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activePageIndex)? changeActivePage,
    TResult Function(UserAccount userAccount)? addUserAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePageEvent value) changeActivePage,
    required TResult Function(AddUserAccountEvent value) addUserAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePageEvent value)? changeActivePage,
    TResult? Function(AddUserAccountEvent value)? addUserAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePageEvent value)? changeActivePage,
    TResult Function(AddUserAccountEvent value)? addUserAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventsCopyWith<$Res> {
  factory $HomeEventsCopyWith(
          HomeEvents value, $Res Function(HomeEvents) then) =
      _$HomeEventsCopyWithImpl<$Res, HomeEvents>;
}

/// @nodoc
class _$HomeEventsCopyWithImpl<$Res, $Val extends HomeEvents>
    implements $HomeEventsCopyWith<$Res> {
  _$HomeEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangePageEventImplCopyWith<$Res> {
  factory _$$ChangePageEventImplCopyWith(_$ChangePageEventImpl value,
          $Res Function(_$ChangePageEventImpl) then) =
      __$$ChangePageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int activePageIndex});
}

/// @nodoc
class __$$ChangePageEventImplCopyWithImpl<$Res>
    extends _$HomeEventsCopyWithImpl<$Res, _$ChangePageEventImpl>
    implements _$$ChangePageEventImplCopyWith<$Res> {
  __$$ChangePageEventImplCopyWithImpl(
      _$ChangePageEventImpl _value, $Res Function(_$ChangePageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activePageIndex = null,
  }) {
    return _then(_$ChangePageEventImpl(
      activePageIndex: null == activePageIndex
          ? _value.activePageIndex
          : activePageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageEventImpl implements ChangePageEvent {
  const _$ChangePageEventImpl({required this.activePageIndex});

  @override
  final int activePageIndex;

  @override
  String toString() {
    return 'HomeEvents.changeActivePage(activePageIndex: $activePageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageEventImpl &&
            (identical(other.activePageIndex, activePageIndex) ||
                other.activePageIndex == activePageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activePageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageEventImplCopyWith<_$ChangePageEventImpl> get copyWith =>
      __$$ChangePageEventImplCopyWithImpl<_$ChangePageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activePageIndex) changeActivePage,
    required TResult Function(UserAccount userAccount) addUserAccount,
  }) {
    return changeActivePage(activePageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int activePageIndex)? changeActivePage,
    TResult? Function(UserAccount userAccount)? addUserAccount,
  }) {
    return changeActivePage?.call(activePageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activePageIndex)? changeActivePage,
    TResult Function(UserAccount userAccount)? addUserAccount,
    required TResult orElse(),
  }) {
    if (changeActivePage != null) {
      return changeActivePage(activePageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePageEvent value) changeActivePage,
    required TResult Function(AddUserAccountEvent value) addUserAccount,
  }) {
    return changeActivePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePageEvent value)? changeActivePage,
    TResult? Function(AddUserAccountEvent value)? addUserAccount,
  }) {
    return changeActivePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePageEvent value)? changeActivePage,
    TResult Function(AddUserAccountEvent value)? addUserAccount,
    required TResult orElse(),
  }) {
    if (changeActivePage != null) {
      return changeActivePage(this);
    }
    return orElse();
  }
}

abstract class ChangePageEvent implements HomeEvents {
  const factory ChangePageEvent({required final int activePageIndex}) =
      _$ChangePageEventImpl;

  int get activePageIndex;
  @JsonKey(ignore: true)
  _$$ChangePageEventImplCopyWith<_$ChangePageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserAccountEventImplCopyWith<$Res> {
  factory _$$AddUserAccountEventImplCopyWith(_$AddUserAccountEventImpl value,
          $Res Function(_$AddUserAccountEventImpl) then) =
      __$$AddUserAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAccount userAccount});
}

/// @nodoc
class __$$AddUserAccountEventImplCopyWithImpl<$Res>
    extends _$HomeEventsCopyWithImpl<$Res, _$AddUserAccountEventImpl>
    implements _$$AddUserAccountEventImplCopyWith<$Res> {
  __$$AddUserAccountEventImplCopyWithImpl(_$AddUserAccountEventImpl _value,
      $Res Function(_$AddUserAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = null,
  }) {
    return _then(_$AddUserAccountEventImpl(
      userAccount: null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount,
    ));
  }
}

/// @nodoc

class _$AddUserAccountEventImpl implements AddUserAccountEvent {
  const _$AddUserAccountEventImpl({required this.userAccount});

  @override
  final UserAccount userAccount;

  @override
  String toString() {
    return 'HomeEvents.addUserAccount(userAccount: $userAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserAccountEventImpl &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserAccountEventImplCopyWith<_$AddUserAccountEventImpl> get copyWith =>
      __$$AddUserAccountEventImplCopyWithImpl<_$AddUserAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activePageIndex) changeActivePage,
    required TResult Function(UserAccount userAccount) addUserAccount,
  }) {
    return addUserAccount(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int activePageIndex)? changeActivePage,
    TResult? Function(UserAccount userAccount)? addUserAccount,
  }) {
    return addUserAccount?.call(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activePageIndex)? changeActivePage,
    TResult Function(UserAccount userAccount)? addUserAccount,
    required TResult orElse(),
  }) {
    if (addUserAccount != null) {
      return addUserAccount(userAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePageEvent value) changeActivePage,
    required TResult Function(AddUserAccountEvent value) addUserAccount,
  }) {
    return addUserAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePageEvent value)? changeActivePage,
    TResult? Function(AddUserAccountEvent value)? addUserAccount,
  }) {
    return addUserAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePageEvent value)? changeActivePage,
    TResult Function(AddUserAccountEvent value)? addUserAccount,
    required TResult orElse(),
  }) {
    if (addUserAccount != null) {
      return addUserAccount(this);
    }
    return orElse();
  }
}

abstract class AddUserAccountEvent implements HomeEvents {
  const factory AddUserAccountEvent({required final UserAccount userAccount}) =
      _$AddUserAccountEventImpl;

  UserAccount get userAccount;
  @JsonKey(ignore: true)
  _$$AddUserAccountEventImplCopyWith<_$AddUserAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
