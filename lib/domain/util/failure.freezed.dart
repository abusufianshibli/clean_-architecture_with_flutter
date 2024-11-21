// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CancelExceptionImplCopyWith(_$CancelExceptionImpl value,
          $Res Function(_$CancelExceptionImpl) then) =
      __$$CancelExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CancelExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CancelExceptionImpl>
    implements _$$CancelExceptionImplCopyWith<$Res> {
  __$$CancelExceptionImplCopyWithImpl(
      _$CancelExceptionImpl _value, $Res Function(_$CancelExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CancelExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelExceptionImpl extends CancelException {
  const _$CancelExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cancelException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelExceptionImplCopyWith<_$CancelExceptionImpl> get copyWith =>
      __$$CancelExceptionImplCopyWithImpl<_$CancelExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return cancelException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return cancelException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (cancelException != null) {
      return cancelException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return cancelException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return cancelException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (cancelException != null) {
      return cancelException(this);
    }
    return orElse();
  }
}

abstract class CancelException extends Failure {
  const factory CancelException({required final String message}) =
      _$CancelExceptionImpl;
  const CancelException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CancelExceptionImplCopyWith<_$CancelExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionTimeoutExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionTimeoutExceptionImplCopyWith(
          _$ConnectionTimeoutExceptionImpl value,
          $Res Function(_$ConnectionTimeoutExceptionImpl) then) =
      __$$ConnectionTimeoutExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionTimeoutExceptionImpl>
    implements _$$ConnectionTimeoutExceptionImplCopyWith<$Res> {
  __$$ConnectionTimeoutExceptionImplCopyWithImpl(
      _$ConnectionTimeoutExceptionImpl _value,
      $Res Function(_$ConnectionTimeoutExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionTimeoutExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeoutExceptionImpl extends ConnectionTimeoutException {
  const _$ConnectionTimeoutExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.connectionTimeoutException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeoutExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeoutExceptionImplCopyWith<_$ConnectionTimeoutExceptionImpl>
      get copyWith => __$$ConnectionTimeoutExceptionImplCopyWithImpl<
          _$ConnectionTimeoutExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return connectionTimeoutException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return connectionTimeoutException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (connectionTimeoutException != null) {
      return connectionTimeoutException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return connectionTimeoutException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return connectionTimeoutException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (connectionTimeoutException != null) {
      return connectionTimeoutException(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeoutException extends Failure {
  const factory ConnectionTimeoutException({required final String message}) =
      _$ConnectionTimeoutExceptionImpl;
  const ConnectionTimeoutException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionTimeoutExceptionImplCopyWith<_$ConnectionTimeoutExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveTimeoutExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ReceiveTimeoutExceptionImplCopyWith(
          _$ReceiveTimeoutExceptionImpl value,
          $Res Function(_$ReceiveTimeoutExceptionImpl) then) =
      __$$ReceiveTimeoutExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ReceiveTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ReceiveTimeoutExceptionImpl>
    implements _$$ReceiveTimeoutExceptionImplCopyWith<$Res> {
  __$$ReceiveTimeoutExceptionImplCopyWithImpl(
      _$ReceiveTimeoutExceptionImpl _value,
      $Res Function(_$ReceiveTimeoutExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReceiveTimeoutExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiveTimeoutExceptionImpl extends ReceiveTimeoutException {
  const _$ReceiveTimeoutExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.receiveTimeoutException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveTimeoutExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveTimeoutExceptionImplCopyWith<_$ReceiveTimeoutExceptionImpl>
      get copyWith => __$$ReceiveTimeoutExceptionImplCopyWithImpl<
          _$ReceiveTimeoutExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return receiveTimeoutException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return receiveTimeoutException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (receiveTimeoutException != null) {
      return receiveTimeoutException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return receiveTimeoutException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return receiveTimeoutException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (receiveTimeoutException != null) {
      return receiveTimeoutException(this);
    }
    return orElse();
  }
}

abstract class ReceiveTimeoutException extends Failure {
  const factory ReceiveTimeoutException({required final String message}) =
      _$ReceiveTimeoutExceptionImpl;
  const ReceiveTimeoutException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ReceiveTimeoutExceptionImplCopyWith<_$ReceiveTimeoutExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTimeoutExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SendTimeoutExceptionImplCopyWith(_$SendTimeoutExceptionImpl value,
          $Res Function(_$SendTimeoutExceptionImpl) then) =
      __$$SendTimeoutExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SendTimeoutExceptionImpl>
    implements _$$SendTimeoutExceptionImplCopyWith<$Res> {
  __$$SendTimeoutExceptionImplCopyWithImpl(_$SendTimeoutExceptionImpl _value,
      $Res Function(_$SendTimeoutExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendTimeoutExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendTimeoutExceptionImpl extends SendTimeoutException {
  const _$SendTimeoutExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.sendTimeoutException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTimeoutExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTimeoutExceptionImplCopyWith<_$SendTimeoutExceptionImpl>
      get copyWith =>
          __$$SendTimeoutExceptionImplCopyWithImpl<_$SendTimeoutExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return sendTimeoutException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return sendTimeoutException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (sendTimeoutException != null) {
      return sendTimeoutException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return sendTimeoutException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return sendTimeoutException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (sendTimeoutException != null) {
      return sendTimeoutException(this);
    }
    return orElse();
  }
}

abstract class SendTimeoutException extends Failure {
  const factory SendTimeoutException({required final String message}) =
      _$SendTimeoutExceptionImpl;
  const SendTimeoutException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SendTimeoutExceptionImplCopyWith<_$SendTimeoutExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SocketExceptionImplCopyWith(_$SocketExceptionImpl value,
          $Res Function(_$SocketExceptionImpl) then) =
      __$$SocketExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$SocketExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SocketExceptionImpl>
    implements _$$SocketExceptionImplCopyWith<$Res> {
  __$$SocketExceptionImplCopyWithImpl(
      _$SocketExceptionImpl _value, $Res Function(_$SocketExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$SocketExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SocketExceptionImpl extends SocketException {
  const _$SocketExceptionImpl({required this.message, required this.statusCode})
      : super._();

  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.socketException(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketExceptionImplCopyWith<_$SocketExceptionImpl> get copyWith =>
      __$$SocketExceptionImplCopyWithImpl<_$SocketExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return socketException(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return socketException?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (socketException != null) {
      return socketException(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return socketException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return socketException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (socketException != null) {
      return socketException(this);
    }
    return orElse();
  }
}

abstract class SocketException extends Failure {
  const factory SocketException(
      {required final String message,
      required final int statusCode}) = _$SocketExceptionImpl;
  const SocketException._() : super._();

  @override
  String get message;
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$SocketExceptionImplCopyWith<_$SocketExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnrecognizedExceptionImplCopyWith(
          _$UnrecognizedExceptionImpl value,
          $Res Function(_$UnrecognizedExceptionImpl) then) =
      __$$UnrecognizedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnrecognizedExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnrecognizedExceptionImpl>
    implements _$$UnrecognizedExceptionImplCopyWith<$Res> {
  __$$UnrecognizedExceptionImplCopyWithImpl(_$UnrecognizedExceptionImpl _value,
      $Res Function(_$UnrecognizedExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnrecognizedExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnrecognizedExceptionImpl extends UnrecognizedException {
  const _$UnrecognizedExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unrecognizedException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedExceptionImplCopyWith<_$UnrecognizedExceptionImpl>
      get copyWith => __$$UnrecognizedExceptionImplCopyWithImpl<
          _$UnrecognizedExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return unrecognizedException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return unrecognizedException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (unrecognizedException != null) {
      return unrecognizedException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return unrecognizedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return unrecognizedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (unrecognizedException != null) {
      return unrecognizedException(this);
    }
    return orElse();
  }
}

abstract class UnrecognizedException extends Failure {
  const factory UnrecognizedException({required final String message}) =
      _$UnrecognizedExceptionImpl;
  const UnrecognizedException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnrecognizedExceptionImplCopyWith<_$UnrecognizedExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenEpiredExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$TokenEpiredExceptionImplCopyWith(_$TokenEpiredExceptionImpl value,
          $Res Function(_$TokenEpiredExceptionImpl) then) =
      __$$TokenEpiredExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TokenEpiredExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TokenEpiredExceptionImpl>
    implements _$$TokenEpiredExceptionImplCopyWith<$Res> {
  __$$TokenEpiredExceptionImplCopyWithImpl(_$TokenEpiredExceptionImpl _value,
      $Res Function(_$TokenEpiredExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TokenEpiredExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenEpiredExceptionImpl extends TokenEpiredException {
  const _$TokenEpiredExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.tokenExpiredException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenEpiredExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenEpiredExceptionImplCopyWith<_$TokenEpiredExceptionImpl>
      get copyWith =>
          __$$TokenEpiredExceptionImplCopyWithImpl<_$TokenEpiredExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return tokenExpiredException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return tokenExpiredException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (tokenExpiredException != null) {
      return tokenExpiredException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return tokenExpiredException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return tokenExpiredException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (tokenExpiredException != null) {
      return tokenExpiredException(this);
    }
    return orElse();
  }
}

abstract class TokenEpiredException extends Failure {
  const factory TokenEpiredException({required final String message}) =
      _$TokenEpiredExceptionImpl;
  const TokenEpiredException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TokenEpiredExceptionImplCopyWith<_$TokenEpiredExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerExceptionImplCopyWith(_$ServerExceptionImpl value,
          $Res Function(_$ServerExceptionImpl) then) =
      __$$ServerExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, dynamic data});
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerExceptionImpl>
    implements _$$ServerExceptionImplCopyWith<$Res> {
  __$$ServerExceptionImplCopyWithImpl(
      _$ServerExceptionImpl _value, $Res Function(_$ServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? data = freezed,
  }) {
    return _then(_$ServerExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ServerExceptionImpl extends ServerException {
  const _$ServerExceptionImpl(
      {required this.message, required this.statusCode, this.data})
      : super._();

  @override
  final String message;
  @override
  final int statusCode;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'Failure.serverException(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<_$ServerExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return serverException(message, statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return serverException?.call(message, statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message, statusCode, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException extends Failure {
  const factory ServerException(
      {required final String message,
      required final int statusCode,
      final dynamic data}) = _$ServerExceptionImpl;
  const ServerException._() : super._();

  @override
  String get message;
  int get statusCode;
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormatExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FormatExceptionImplCopyWith(_$FormatExceptionImpl value,
          $Res Function(_$FormatExceptionImpl) then) =
      __$$FormatExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FormatExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FormatExceptionImpl>
    implements _$$FormatExceptionImplCopyWith<$Res> {
  __$$FormatExceptionImplCopyWithImpl(
      _$FormatExceptionImpl _value, $Res Function(_$FormatExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FormatExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormatExceptionImpl extends FormatException {
  const _$FormatExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.formatException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatExceptionImplCopyWith<_$FormatExceptionImpl> get copyWith =>
      __$$FormatExceptionImplCopyWithImpl<_$FormatExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return formatException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return formatException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (formatException != null) {
      return formatException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return formatException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return formatException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (formatException != null) {
      return formatException(this);
    }
    return orElse();
  }
}

abstract class FormatException extends Failure {
  const factory FormatException({required final String message}) =
      _$FormatExceptionImpl;
  const FormatException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FormatExceptionImplCopyWith<_$FormatExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SerializationExceptionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SerializationExceptionImplCopyWith(
          _$SerializationExceptionImpl value,
          $Res Function(_$SerializationExceptionImpl) then) =
      __$$SerializationExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SerializationExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SerializationExceptionImpl>
    implements _$$SerializationExceptionImplCopyWith<$Res> {
  __$$SerializationExceptionImplCopyWithImpl(
      _$SerializationExceptionImpl _value,
      $Res Function(_$SerializationExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SerializationExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SerializationExceptionImpl extends SerializationException {
  const _$SerializationExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serializationException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerializationExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SerializationExceptionImplCopyWith<_$SerializationExceptionImpl>
      get copyWith => __$$SerializationExceptionImplCopyWithImpl<
          _$SerializationExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) cancelException,
    required TResult Function(String message) connectionTimeoutException,
    required TResult Function(String message) receiveTimeoutException,
    required TResult Function(String message) sendTimeoutException,
    required TResult Function(String message, int statusCode) socketException,
    required TResult Function(String message) unrecognizedException,
    required TResult Function(String message) tokenExpiredException,
    required TResult Function(String message, int statusCode, dynamic data)
        serverException,
    required TResult Function(String message) formatException,
    required TResult Function(String message) serializationException,
  }) {
    return serializationException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelException,
    TResult? Function(String message)? connectionTimeoutException,
    TResult? Function(String message)? receiveTimeoutException,
    TResult? Function(String message)? sendTimeoutException,
    TResult? Function(String message, int statusCode)? socketException,
    TResult? Function(String message)? unrecognizedException,
    TResult? Function(String message)? tokenExpiredException,
    TResult? Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult? Function(String message)? formatException,
    TResult? Function(String message)? serializationException,
  }) {
    return serializationException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? cancelException,
    TResult Function(String message)? connectionTimeoutException,
    TResult Function(String message)? receiveTimeoutException,
    TResult Function(String message)? sendTimeoutException,
    TResult Function(String message, int statusCode)? socketException,
    TResult Function(String message)? unrecognizedException,
    TResult Function(String message)? tokenExpiredException,
    TResult Function(String message, int statusCode, dynamic data)?
        serverException,
    TResult Function(String message)? formatException,
    TResult Function(String message)? serializationException,
    required TResult orElse(),
  }) {
    if (serializationException != null) {
      return serializationException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelException value) cancelException,
    required TResult Function(ConnectionTimeoutException value)
        connectionTimeoutException,
    required TResult Function(ReceiveTimeoutException value)
        receiveTimeoutException,
    required TResult Function(SendTimeoutException value) sendTimeoutException,
    required TResult Function(SocketException value) socketException,
    required TResult Function(UnrecognizedException value)
        unrecognizedException,
    required TResult Function(TokenEpiredException value) tokenExpiredException,
    required TResult Function(ServerException value) serverException,
    required TResult Function(FormatException value) formatException,
    required TResult Function(SerializationException value)
        serializationException,
  }) {
    return serializationException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelException value)? cancelException,
    TResult? Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult? Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult? Function(SendTimeoutException value)? sendTimeoutException,
    TResult? Function(SocketException value)? socketException,
    TResult? Function(UnrecognizedException value)? unrecognizedException,
    TResult? Function(TokenEpiredException value)? tokenExpiredException,
    TResult? Function(ServerException value)? serverException,
    TResult? Function(FormatException value)? formatException,
    TResult? Function(SerializationException value)? serializationException,
  }) {
    return serializationException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelException value)? cancelException,
    TResult Function(ConnectionTimeoutException value)?
        connectionTimeoutException,
    TResult Function(ReceiveTimeoutException value)? receiveTimeoutException,
    TResult Function(SendTimeoutException value)? sendTimeoutException,
    TResult Function(SocketException value)? socketException,
    TResult Function(UnrecognizedException value)? unrecognizedException,
    TResult Function(TokenEpiredException value)? tokenExpiredException,
    TResult Function(ServerException value)? serverException,
    TResult Function(FormatException value)? formatException,
    TResult Function(SerializationException value)? serializationException,
    required TResult orElse(),
  }) {
    if (serializationException != null) {
      return serializationException(this);
    }
    return orElse();
  }
}

abstract class SerializationException extends Failure {
  const factory SerializationException({required final String message}) =
      _$SerializationExceptionImpl;
  const SerializationException._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SerializationExceptionImplCopyWith<_$SerializationExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
