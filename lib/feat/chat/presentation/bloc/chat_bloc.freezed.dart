// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatParams chatParams) getChat,
    required TResult Function(MessageParams messageParams) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatParams chatParams)? getChat,
    TResult? Function(MessageParams messageParams)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatParams chatParams)? getChat,
    TResult Function(MessageParams messageParams)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatEvent value) getChat,
    required TResult Function(SendMessageEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatEvent value)? getChat,
    TResult? Function(SendMessageEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatEvent value)? getChat,
    TResult Function(SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventsCopyWith<$Res> {
  factory $ChatEventsCopyWith(
          ChatEvents value, $Res Function(ChatEvents) then) =
      _$ChatEventsCopyWithImpl<$Res, ChatEvents>;
}

/// @nodoc
class _$ChatEventsCopyWithImpl<$Res, $Val extends ChatEvents>
    implements $ChatEventsCopyWith<$Res> {
  _$ChatEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadChatEventImplCopyWith<$Res> {
  factory _$$LoadChatEventImplCopyWith(
          _$LoadChatEventImpl value, $Res Function(_$LoadChatEventImpl) then) =
      __$$LoadChatEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatParams chatParams});
}

/// @nodoc
class __$$LoadChatEventImplCopyWithImpl<$Res>
    extends _$ChatEventsCopyWithImpl<$Res, _$LoadChatEventImpl>
    implements _$$LoadChatEventImplCopyWith<$Res> {
  __$$LoadChatEventImplCopyWithImpl(
      _$LoadChatEventImpl _value, $Res Function(_$LoadChatEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatParams = null,
  }) {
    return _then(_$LoadChatEventImpl(
      chatParams: null == chatParams
          ? _value.chatParams
          : chatParams // ignore: cast_nullable_to_non_nullable
              as ChatParams,
    ));
  }
}

/// @nodoc

class _$LoadChatEventImpl implements LoadChatEvent {
  const _$LoadChatEventImpl({required this.chatParams});

  @override
  final ChatParams chatParams;

  @override
  String toString() {
    return 'ChatEvents.getChat(chatParams: $chatParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadChatEventImpl &&
            (identical(other.chatParams, chatParams) ||
                other.chatParams == chatParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadChatEventImplCopyWith<_$LoadChatEventImpl> get copyWith =>
      __$$LoadChatEventImplCopyWithImpl<_$LoadChatEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatParams chatParams) getChat,
    required TResult Function(MessageParams messageParams) sendMessage,
  }) {
    return getChat(chatParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatParams chatParams)? getChat,
    TResult? Function(MessageParams messageParams)? sendMessage,
  }) {
    return getChat?.call(chatParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatParams chatParams)? getChat,
    TResult Function(MessageParams messageParams)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(chatParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatEvent value) getChat,
    required TResult Function(SendMessageEvent value) sendMessage,
  }) {
    return getChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatEvent value)? getChat,
    TResult? Function(SendMessageEvent value)? sendMessage,
  }) {
    return getChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatEvent value)? getChat,
    TResult Function(SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(this);
    }
    return orElse();
  }
}

abstract class LoadChatEvent implements ChatEvents {
  const factory LoadChatEvent({required final ChatParams chatParams}) =
      _$LoadChatEventImpl;

  ChatParams get chatParams;
  @JsonKey(ignore: true)
  _$$LoadChatEventImplCopyWith<_$LoadChatEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageEventImplCopyWith<$Res> {
  factory _$$SendMessageEventImplCopyWith(_$SendMessageEventImpl value,
          $Res Function(_$SendMessageEventImpl) then) =
      __$$SendMessageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageParams messageParams});
}

/// @nodoc
class __$$SendMessageEventImplCopyWithImpl<$Res>
    extends _$ChatEventsCopyWithImpl<$Res, _$SendMessageEventImpl>
    implements _$$SendMessageEventImplCopyWith<$Res> {
  __$$SendMessageEventImplCopyWithImpl(_$SendMessageEventImpl _value,
      $Res Function(_$SendMessageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageParams = null,
  }) {
    return _then(_$SendMessageEventImpl(
      messageParams: null == messageParams
          ? _value.messageParams
          : messageParams // ignore: cast_nullable_to_non_nullable
              as MessageParams,
    ));
  }
}

/// @nodoc

class _$SendMessageEventImpl implements SendMessageEvent {
  const _$SendMessageEventImpl({required this.messageParams});

  @override
  final MessageParams messageParams;

  @override
  String toString() {
    return 'ChatEvents.sendMessage(messageParams: $messageParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageEventImpl &&
            (identical(other.messageParams, messageParams) ||
                other.messageParams == messageParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageEventImplCopyWith<_$SendMessageEventImpl> get copyWith =>
      __$$SendMessageEventImplCopyWithImpl<_$SendMessageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatParams chatParams) getChat,
    required TResult Function(MessageParams messageParams) sendMessage,
  }) {
    return sendMessage(messageParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatParams chatParams)? getChat,
    TResult? Function(MessageParams messageParams)? sendMessage,
  }) {
    return sendMessage?.call(messageParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatParams chatParams)? getChat,
    TResult Function(MessageParams messageParams)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(messageParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatEvent value) getChat,
    required TResult Function(SendMessageEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChatEvent value)? getChat,
    TResult? Function(SendMessageEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatEvent value)? getChat,
    TResult Function(SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessageEvent implements ChatEvents {
  const factory SendMessageEvent({required final MessageParams messageParams}) =
      _$SendMessageEventImpl;

  MessageParams get messageParams;
  @JsonKey(ignore: true)
  _$$SendMessageEventImplCopyWith<_$SendMessageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
