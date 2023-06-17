part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress email,
    required Password password,
    required bool isSubmiting,
    required bool showErrorMessage,
    required Option<Either<AuthFailure, Unit>> authFailureorSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initialState() => SignInFormState(
        email: EmailAddress(''),
        password: Password(''),
        isSubmiting: false,
        showErrorMessage: false,
        authFailureorSuccess: none(),
      );
}
