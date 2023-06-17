// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEaPPress,
    required TResult Function() signInWithEaPPress,
    required TResult Function() signInWithGooglePress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? registerWithEaPPress,
    TResult? Function()? signInWithEaPPress,
    TResult? Function()? signInWithGooglePress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEaPPress,
    TResult Function()? signInWithEaPPress,
    TResult Function()? signInWithGooglePress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEaPPress value) registerWithEaPPress,
    required TResult Function(_SignInWithEaPPress value) signInWithEaPPress,
    required TResult Function(_SignInWithGooglePress value)
        signInWithGooglePress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult? Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult? Function(_SignInWithGooglePress value)? signInWithGooglePress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult Function(_SignInWithGooglePress value)? signInWithGooglePress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEaPPress,
    required TResult Function() signInWithEaPPress,
    required TResult Function() signInWithGooglePress,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? registerWithEaPPress,
    TResult? Function()? signInWithEaPPress,
    TResult? Function()? signInWithGooglePress,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEaPPress,
    TResult Function()? signInWithEaPPress,
    TResult Function()? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEaPPress value) registerWithEaPPress,
    required TResult Function(_SignInWithEaPPress value) signInWithEaPPress,
    required TResult Function(_SignInWithGooglePress value)
        signInWithGooglePress,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult? Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult? Function(_SignInWithGooglePress value)? signInWithGooglePress,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult Function(_SignInWithGooglePress value)? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEaPPress,
    required TResult Function() signInWithEaPPress,
    required TResult Function() signInWithGooglePress,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? registerWithEaPPress,
    TResult? Function()? signInWithEaPPress,
    TResult? Function()? signInWithGooglePress,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEaPPress,
    TResult Function()? signInWithEaPPress,
    TResult Function()? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEaPPress value) registerWithEaPPress,
    required TResult Function(_SignInWithEaPPress value) signInWithEaPPress,
    required TResult Function(_SignInWithGooglePress value)
        signInWithGooglePress,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult? Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult? Function(_SignInWithGooglePress value)? signInWithGooglePress,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult Function(_SignInWithGooglePress value)? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterWithEaPPressCopyWith<$Res> {
  factory _$$_RegisterWithEaPPressCopyWith(_$_RegisterWithEaPPress value,
          $Res Function(_$_RegisterWithEaPPress) then) =
      __$$_RegisterWithEaPPressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterWithEaPPressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_RegisterWithEaPPress>
    implements _$$_RegisterWithEaPPressCopyWith<$Res> {
  __$$_RegisterWithEaPPressCopyWithImpl(_$_RegisterWithEaPPress _value,
      $Res Function(_$_RegisterWithEaPPress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterWithEaPPress implements _RegisterWithEaPPress {
  const _$_RegisterWithEaPPress();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEaPPress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterWithEaPPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEaPPress,
    required TResult Function() signInWithEaPPress,
    required TResult Function() signInWithGooglePress,
  }) {
    return registerWithEaPPress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? registerWithEaPPress,
    TResult? Function()? signInWithEaPPress,
    TResult? Function()? signInWithGooglePress,
  }) {
    return registerWithEaPPress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEaPPress,
    TResult Function()? signInWithEaPPress,
    TResult Function()? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (registerWithEaPPress != null) {
      return registerWithEaPPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEaPPress value) registerWithEaPPress,
    required TResult Function(_SignInWithEaPPress value) signInWithEaPPress,
    required TResult Function(_SignInWithGooglePress value)
        signInWithGooglePress,
  }) {
    return registerWithEaPPress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult? Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult? Function(_SignInWithGooglePress value)? signInWithGooglePress,
  }) {
    return registerWithEaPPress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult Function(_SignInWithGooglePress value)? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (registerWithEaPPress != null) {
      return registerWithEaPPress(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEaPPress implements SignInFormEvent {
  const factory _RegisterWithEaPPress() = _$_RegisterWithEaPPress;
}

/// @nodoc
abstract class _$$_SignInWithEaPPressCopyWith<$Res> {
  factory _$$_SignInWithEaPPressCopyWith(_$_SignInWithEaPPress value,
          $Res Function(_$_SignInWithEaPPress) then) =
      __$$_SignInWithEaPPressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithEaPPressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_SignInWithEaPPress>
    implements _$$_SignInWithEaPPressCopyWith<$Res> {
  __$$_SignInWithEaPPressCopyWithImpl(
      _$_SignInWithEaPPress _value, $Res Function(_$_SignInWithEaPPress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithEaPPress implements _SignInWithEaPPress {
  const _$_SignInWithEaPPress();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEaPPress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithEaPPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEaPPress,
    required TResult Function() signInWithEaPPress,
    required TResult Function() signInWithGooglePress,
  }) {
    return signInWithEaPPress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? registerWithEaPPress,
    TResult? Function()? signInWithEaPPress,
    TResult? Function()? signInWithGooglePress,
  }) {
    return signInWithEaPPress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEaPPress,
    TResult Function()? signInWithEaPPress,
    TResult Function()? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (signInWithEaPPress != null) {
      return signInWithEaPPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEaPPress value) registerWithEaPPress,
    required TResult Function(_SignInWithEaPPress value) signInWithEaPPress,
    required TResult Function(_SignInWithGooglePress value)
        signInWithGooglePress,
  }) {
    return signInWithEaPPress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult? Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult? Function(_SignInWithGooglePress value)? signInWithGooglePress,
  }) {
    return signInWithEaPPress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult Function(_SignInWithGooglePress value)? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (signInWithEaPPress != null) {
      return signInWithEaPPress(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEaPPress implements SignInFormEvent {
  const factory _SignInWithEaPPress() = _$_SignInWithEaPPress;
}

/// @nodoc
abstract class _$$_SignInWithGooglePressCopyWith<$Res> {
  factory _$$_SignInWithGooglePressCopyWith(_$_SignInWithGooglePress value,
          $Res Function(_$_SignInWithGooglePress) then) =
      __$$_SignInWithGooglePressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGooglePressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_SignInWithGooglePress>
    implements _$$_SignInWithGooglePressCopyWith<$Res> {
  __$$_SignInWithGooglePressCopyWithImpl(_$_SignInWithGooglePress _value,
      $Res Function(_$_SignInWithGooglePress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithGooglePress implements _SignInWithGooglePress {
  const _$_SignInWithGooglePress();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGooglePress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEaPPress,
    required TResult Function() signInWithEaPPress,
    required TResult Function() signInWithGooglePress,
  }) {
    return signInWithGooglePress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? registerWithEaPPress,
    TResult? Function()? signInWithEaPPress,
    TResult? Function()? signInWithGooglePress,
  }) {
    return signInWithGooglePress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEaPPress,
    TResult Function()? signInWithEaPPress,
    TResult Function()? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (signInWithGooglePress != null) {
      return signInWithGooglePress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEaPPress value) registerWithEaPPress,
    required TResult Function(_SignInWithEaPPress value) signInWithEaPPress,
    required TResult Function(_SignInWithGooglePress value)
        signInWithGooglePress,
  }) {
    return signInWithGooglePress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult? Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult? Function(_SignInWithGooglePress value)? signInWithGooglePress,
  }) {
    return signInWithGooglePress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEaPPress value)? registerWithEaPPress,
    TResult Function(_SignInWithEaPPress value)? signInWithEaPPress,
    TResult Function(_SignInWithGooglePress value)? signInWithGooglePress,
    required TResult orElse(),
  }) {
    if (signInWithGooglePress != null) {
      return signInWithGooglePress(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGooglePress implements SignInFormEvent {
  const factory _SignInWithGooglePress() = _$_SignInWithGooglePress;
}

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmiting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureorSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      bool isSubmiting,
      bool showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureorSuccess});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSubmiting = null,
    Object? showErrorMessage = null,
    Object? authFailureorSuccess = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmiting: null == isSubmiting
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureorSuccess: null == authFailureorSuccess
          ? _value.authFailureorSuccess
          : authFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      bool isSubmiting,
      bool showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureorSuccess});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSubmiting = null,
    Object? showErrorMessage = null,
    Object? authFailureorSuccess = null,
  }) {
    return _then(_$_SignInFormState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmiting: null == isSubmiting
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureorSuccess: null == authFailureorSuccess
          ? _value.authFailureorSuccess
          : authFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.email,
      required this.password,
      required this.isSubmiting,
      required this.showErrorMessage,
      required this.authFailureorSuccess});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool isSubmiting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureorSuccess;

  @override
  String toString() {
    return 'SignInFormState(email: $email, password: $password, isSubmiting: $isSubmiting, showErrorMessage: $showErrorMessage, authFailureorSuccess: $authFailureorSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmiting, isSubmiting) ||
                other.isSubmiting == isSubmiting) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.authFailureorSuccess, authFailureorSuccess) ||
                other.authFailureorSuccess == authFailureorSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isSubmiting,
      showErrorMessage, authFailureorSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final EmailAddress email,
      required final Password password,
      required final bool isSubmiting,
      required final bool showErrorMessage,
      required final Option<Either<AuthFailure, Unit>>
          authFailureorSuccess}) = _$_SignInFormState;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  bool get isSubmiting;
  @override
  bool get showErrorMessage;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureorSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
