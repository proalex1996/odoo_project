part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory SignInFormEvent.registerWithEaPPress() = _RegisterWithEaPPress;
  const factory SignInFormEvent.signInWithEaPPress() = _SignInWithEaPPress;
  const factory SignInFormEvent.signInWithGooglePress() =
      _SignInWithGooglePress;
}
