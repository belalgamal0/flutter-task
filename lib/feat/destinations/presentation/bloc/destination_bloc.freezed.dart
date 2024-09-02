// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DestinationEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDestination,
    required TResult Function(String destinationName) addDestination,
    required TResult Function(String destinationName, String destinationId)
        updateDestination,
    required TResult Function(String destinationId) deleteDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDestination,
    TResult? Function(String destinationName)? addDestination,
    TResult? Function(String destinationName, String destinationId)?
        updateDestination,
    TResult? Function(String destinationId)? deleteDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDestination,
    TResult Function(String destinationName)? addDestination,
    TResult Function(String destinationName, String destinationId)?
        updateDestination,
    TResult Function(String destinationId)? deleteDestination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDestinationsEvent value) getDestination,
    required TResult Function(AddDestinationEvent value) addDestination,
    required TResult Function(UpdateDestinationEvent value) updateDestination,
    required TResult Function(DeleteDestinationEvent value) deleteDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDestinationsEvent value)? getDestination,
    TResult? Function(AddDestinationEvent value)? addDestination,
    TResult? Function(UpdateDestinationEvent value)? updateDestination,
    TResult? Function(DeleteDestinationEvent value)? deleteDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDestinationsEvent value)? getDestination,
    TResult Function(AddDestinationEvent value)? addDestination,
    TResult Function(UpdateDestinationEvent value)? updateDestination,
    TResult Function(DeleteDestinationEvent value)? deleteDestination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationEventsCopyWith<$Res> {
  factory $DestinationEventsCopyWith(
          DestinationEvents value, $Res Function(DestinationEvents) then) =
      _$DestinationEventsCopyWithImpl<$Res, DestinationEvents>;
}

/// @nodoc
class _$DestinationEventsCopyWithImpl<$Res, $Val extends DestinationEvents>
    implements $DestinationEventsCopyWith<$Res> {
  _$DestinationEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDestinationsEventImplCopyWith<$Res> {
  factory _$$LoadDestinationsEventImplCopyWith(
          _$LoadDestinationsEventImpl value,
          $Res Function(_$LoadDestinationsEventImpl) then) =
      __$$LoadDestinationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDestinationsEventImplCopyWithImpl<$Res>
    extends _$DestinationEventsCopyWithImpl<$Res, _$LoadDestinationsEventImpl>
    implements _$$LoadDestinationsEventImplCopyWith<$Res> {
  __$$LoadDestinationsEventImplCopyWithImpl(_$LoadDestinationsEventImpl _value,
      $Res Function(_$LoadDestinationsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDestinationsEventImpl
    with DiagnosticableTreeMixin
    implements LoadDestinationsEvent {
  const _$LoadDestinationsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DestinationEvents.getDestination()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DestinationEvents.getDestination'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDestinationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDestination,
    required TResult Function(String destinationName) addDestination,
    required TResult Function(String destinationName, String destinationId)
        updateDestination,
    required TResult Function(String destinationId) deleteDestination,
  }) {
    return getDestination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDestination,
    TResult? Function(String destinationName)? addDestination,
    TResult? Function(String destinationName, String destinationId)?
        updateDestination,
    TResult? Function(String destinationId)? deleteDestination,
  }) {
    return getDestination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDestination,
    TResult Function(String destinationName)? addDestination,
    TResult Function(String destinationName, String destinationId)?
        updateDestination,
    TResult Function(String destinationId)? deleteDestination,
    required TResult orElse(),
  }) {
    if (getDestination != null) {
      return getDestination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDestinationsEvent value) getDestination,
    required TResult Function(AddDestinationEvent value) addDestination,
    required TResult Function(UpdateDestinationEvent value) updateDestination,
    required TResult Function(DeleteDestinationEvent value) deleteDestination,
  }) {
    return getDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDestinationsEvent value)? getDestination,
    TResult? Function(AddDestinationEvent value)? addDestination,
    TResult? Function(UpdateDestinationEvent value)? updateDestination,
    TResult? Function(DeleteDestinationEvent value)? deleteDestination,
  }) {
    return getDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDestinationsEvent value)? getDestination,
    TResult Function(AddDestinationEvent value)? addDestination,
    TResult Function(UpdateDestinationEvent value)? updateDestination,
    TResult Function(DeleteDestinationEvent value)? deleteDestination,
    required TResult orElse(),
  }) {
    if (getDestination != null) {
      return getDestination(this);
    }
    return orElse();
  }
}

abstract class LoadDestinationsEvent implements DestinationEvents {
  const factory LoadDestinationsEvent() = _$LoadDestinationsEventImpl;
}

/// @nodoc
abstract class _$$AddDestinationEventImplCopyWith<$Res> {
  factory _$$AddDestinationEventImplCopyWith(_$AddDestinationEventImpl value,
          $Res Function(_$AddDestinationEventImpl) then) =
      __$$AddDestinationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String destinationName});
}

/// @nodoc
class __$$AddDestinationEventImplCopyWithImpl<$Res>
    extends _$DestinationEventsCopyWithImpl<$Res, _$AddDestinationEventImpl>
    implements _$$AddDestinationEventImplCopyWith<$Res> {
  __$$AddDestinationEventImplCopyWithImpl(_$AddDestinationEventImpl _value,
      $Res Function(_$AddDestinationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationName = null,
  }) {
    return _then(_$AddDestinationEventImpl(
      destinationName: null == destinationName
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddDestinationEventImpl
    with DiagnosticableTreeMixin
    implements AddDestinationEvent {
  const _$AddDestinationEventImpl({required this.destinationName});

  @override
  final String destinationName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DestinationEvents.addDestination(destinationName: $destinationName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DestinationEvents.addDestination'))
      ..add(DiagnosticsProperty('destinationName', destinationName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDestinationEventImpl &&
            (identical(other.destinationName, destinationName) ||
                other.destinationName == destinationName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDestinationEventImplCopyWith<_$AddDestinationEventImpl> get copyWith =>
      __$$AddDestinationEventImplCopyWithImpl<_$AddDestinationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDestination,
    required TResult Function(String destinationName) addDestination,
    required TResult Function(String destinationName, String destinationId)
        updateDestination,
    required TResult Function(String destinationId) deleteDestination,
  }) {
    return addDestination(destinationName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDestination,
    TResult? Function(String destinationName)? addDestination,
    TResult? Function(String destinationName, String destinationId)?
        updateDestination,
    TResult? Function(String destinationId)? deleteDestination,
  }) {
    return addDestination?.call(destinationName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDestination,
    TResult Function(String destinationName)? addDestination,
    TResult Function(String destinationName, String destinationId)?
        updateDestination,
    TResult Function(String destinationId)? deleteDestination,
    required TResult orElse(),
  }) {
    if (addDestination != null) {
      return addDestination(destinationName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDestinationsEvent value) getDestination,
    required TResult Function(AddDestinationEvent value) addDestination,
    required TResult Function(UpdateDestinationEvent value) updateDestination,
    required TResult Function(DeleteDestinationEvent value) deleteDestination,
  }) {
    return addDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDestinationsEvent value)? getDestination,
    TResult? Function(AddDestinationEvent value)? addDestination,
    TResult? Function(UpdateDestinationEvent value)? updateDestination,
    TResult? Function(DeleteDestinationEvent value)? deleteDestination,
  }) {
    return addDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDestinationsEvent value)? getDestination,
    TResult Function(AddDestinationEvent value)? addDestination,
    TResult Function(UpdateDestinationEvent value)? updateDestination,
    TResult Function(DeleteDestinationEvent value)? deleteDestination,
    required TResult orElse(),
  }) {
    if (addDestination != null) {
      return addDestination(this);
    }
    return orElse();
  }
}

abstract class AddDestinationEvent implements DestinationEvents {
  const factory AddDestinationEvent({required final String destinationName}) =
      _$AddDestinationEventImpl;

  String get destinationName;
  @JsonKey(ignore: true)
  _$$AddDestinationEventImplCopyWith<_$AddDestinationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDestinationEventImplCopyWith<$Res> {
  factory _$$UpdateDestinationEventImplCopyWith(
          _$UpdateDestinationEventImpl value,
          $Res Function(_$UpdateDestinationEventImpl) then) =
      __$$UpdateDestinationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String destinationName, String destinationId});
}

/// @nodoc
class __$$UpdateDestinationEventImplCopyWithImpl<$Res>
    extends _$DestinationEventsCopyWithImpl<$Res, _$UpdateDestinationEventImpl>
    implements _$$UpdateDestinationEventImplCopyWith<$Res> {
  __$$UpdateDestinationEventImplCopyWithImpl(
      _$UpdateDestinationEventImpl _value,
      $Res Function(_$UpdateDestinationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationName = null,
    Object? destinationId = null,
  }) {
    return _then(_$UpdateDestinationEventImpl(
      destinationName: null == destinationName
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String,
      destinationId: null == destinationId
          ? _value.destinationId
          : destinationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDestinationEventImpl
    with DiagnosticableTreeMixin
    implements UpdateDestinationEvent {
  const _$UpdateDestinationEventImpl(
      {required this.destinationName, required this.destinationId});

  @override
  final String destinationName;
  @override
  final String destinationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DestinationEvents.updateDestination(destinationName: $destinationName, destinationId: $destinationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DestinationEvents.updateDestination'))
      ..add(DiagnosticsProperty('destinationName', destinationName))
      ..add(DiagnosticsProperty('destinationId', destinationId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDestinationEventImpl &&
            (identical(other.destinationName, destinationName) ||
                other.destinationName == destinationName) &&
            (identical(other.destinationId, destinationId) ||
                other.destinationId == destinationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinationName, destinationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDestinationEventImplCopyWith<_$UpdateDestinationEventImpl>
      get copyWith => __$$UpdateDestinationEventImplCopyWithImpl<
          _$UpdateDestinationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDestination,
    required TResult Function(String destinationName) addDestination,
    required TResult Function(String destinationName, String destinationId)
        updateDestination,
    required TResult Function(String destinationId) deleteDestination,
  }) {
    return updateDestination(destinationName, destinationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDestination,
    TResult? Function(String destinationName)? addDestination,
    TResult? Function(String destinationName, String destinationId)?
        updateDestination,
    TResult? Function(String destinationId)? deleteDestination,
  }) {
    return updateDestination?.call(destinationName, destinationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDestination,
    TResult Function(String destinationName)? addDestination,
    TResult Function(String destinationName, String destinationId)?
        updateDestination,
    TResult Function(String destinationId)? deleteDestination,
    required TResult orElse(),
  }) {
    if (updateDestination != null) {
      return updateDestination(destinationName, destinationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDestinationsEvent value) getDestination,
    required TResult Function(AddDestinationEvent value) addDestination,
    required TResult Function(UpdateDestinationEvent value) updateDestination,
    required TResult Function(DeleteDestinationEvent value) deleteDestination,
  }) {
    return updateDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDestinationsEvent value)? getDestination,
    TResult? Function(AddDestinationEvent value)? addDestination,
    TResult? Function(UpdateDestinationEvent value)? updateDestination,
    TResult? Function(DeleteDestinationEvent value)? deleteDestination,
  }) {
    return updateDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDestinationsEvent value)? getDestination,
    TResult Function(AddDestinationEvent value)? addDestination,
    TResult Function(UpdateDestinationEvent value)? updateDestination,
    TResult Function(DeleteDestinationEvent value)? deleteDestination,
    required TResult orElse(),
  }) {
    if (updateDestination != null) {
      return updateDestination(this);
    }
    return orElse();
  }
}

abstract class UpdateDestinationEvent implements DestinationEvents {
  const factory UpdateDestinationEvent(
      {required final String destinationName,
      required final String destinationId}) = _$UpdateDestinationEventImpl;

  String get destinationName;
  String get destinationId;
  @JsonKey(ignore: true)
  _$$UpdateDestinationEventImplCopyWith<_$UpdateDestinationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDestinationEventImplCopyWith<$Res> {
  factory _$$DeleteDestinationEventImplCopyWith(
          _$DeleteDestinationEventImpl value,
          $Res Function(_$DeleteDestinationEventImpl) then) =
      __$$DeleteDestinationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String destinationId});
}

/// @nodoc
class __$$DeleteDestinationEventImplCopyWithImpl<$Res>
    extends _$DestinationEventsCopyWithImpl<$Res, _$DeleteDestinationEventImpl>
    implements _$$DeleteDestinationEventImplCopyWith<$Res> {
  __$$DeleteDestinationEventImplCopyWithImpl(
      _$DeleteDestinationEventImpl _value,
      $Res Function(_$DeleteDestinationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationId = null,
  }) {
    return _then(_$DeleteDestinationEventImpl(
      destinationId: null == destinationId
          ? _value.destinationId
          : destinationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteDestinationEventImpl
    with DiagnosticableTreeMixin
    implements DeleteDestinationEvent {
  const _$DeleteDestinationEventImpl({required this.destinationId});

  @override
  final String destinationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DestinationEvents.deleteDestination(destinationId: $destinationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DestinationEvents.deleteDestination'))
      ..add(DiagnosticsProperty('destinationId', destinationId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDestinationEventImpl &&
            (identical(other.destinationId, destinationId) ||
                other.destinationId == destinationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDestinationEventImplCopyWith<_$DeleteDestinationEventImpl>
      get copyWith => __$$DeleteDestinationEventImplCopyWithImpl<
          _$DeleteDestinationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDestination,
    required TResult Function(String destinationName) addDestination,
    required TResult Function(String destinationName, String destinationId)
        updateDestination,
    required TResult Function(String destinationId) deleteDestination,
  }) {
    return deleteDestination(destinationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDestination,
    TResult? Function(String destinationName)? addDestination,
    TResult? Function(String destinationName, String destinationId)?
        updateDestination,
    TResult? Function(String destinationId)? deleteDestination,
  }) {
    return deleteDestination?.call(destinationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDestination,
    TResult Function(String destinationName)? addDestination,
    TResult Function(String destinationName, String destinationId)?
        updateDestination,
    TResult Function(String destinationId)? deleteDestination,
    required TResult orElse(),
  }) {
    if (deleteDestination != null) {
      return deleteDestination(destinationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDestinationsEvent value) getDestination,
    required TResult Function(AddDestinationEvent value) addDestination,
    required TResult Function(UpdateDestinationEvent value) updateDestination,
    required TResult Function(DeleteDestinationEvent value) deleteDestination,
  }) {
    return deleteDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDestinationsEvent value)? getDestination,
    TResult? Function(AddDestinationEvent value)? addDestination,
    TResult? Function(UpdateDestinationEvent value)? updateDestination,
    TResult? Function(DeleteDestinationEvent value)? deleteDestination,
  }) {
    return deleteDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDestinationsEvent value)? getDestination,
    TResult Function(AddDestinationEvent value)? addDestination,
    TResult Function(UpdateDestinationEvent value)? updateDestination,
    TResult Function(DeleteDestinationEvent value)? deleteDestination,
    required TResult orElse(),
  }) {
    if (deleteDestination != null) {
      return deleteDestination(this);
    }
    return orElse();
  }
}

abstract class DeleteDestinationEvent implements DestinationEvents {
  const factory DeleteDestinationEvent({required final String destinationId}) =
      _$DeleteDestinationEventImpl;

  String get destinationId;
  @JsonKey(ignore: true)
  _$$DeleteDestinationEventImplCopyWith<_$DeleteDestinationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
