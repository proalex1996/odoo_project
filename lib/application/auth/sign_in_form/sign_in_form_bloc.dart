import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoo_project/domain/auth/auth_failure.dart';
import 'package:odoo_project/domain/auth/i_auth_facade.dart';
import 'package:odoo_project/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormState get initialState => SignInFormState.initialState();

  SignInFormBloc(this._authFacade)
      : super(
          SignInFormState.initialState(),
        );

  Stream<SignInFormState> mapEvenToState(SignInFormEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(email: EmailAddress(e.email));
      },
      passwordChanged: (e) async* {
        yield state.copyWith(password: Password(e.password));
      },
      registerWithEaPPress: (e) async* {
        yield* _doActionOnAuthFacade(_authFacade.registerWithEaP);
      },
      signInWithEaPPress: (_SignInWithEaPPress value) async* {
        yield* _doActionOnAuthFacade(_authFacade.signInWithEaP);
      },
      signInWithGooglePress: (e) async* {
        yield state.copyWith(
          isSubmiting: true,
          authFailureorSuccess: none(),
        );
        final failureorSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmiting: false,
          authFailureorSuccess: some(failureorSuccess),
        );
      },
    );
  }

  Stream<SignInFormState> _doActionOnAuthFacade(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress email,
      required Password password,
    })
        detection,
  ) async* {
    Either<AuthFailure, Unit>? failureorSuccess;
    final isEmailValid = state.email.isVaid();
    final isPassword = state.password.isVaid();
    if (isEmailValid && isPassword) {
      yield state.copyWith(
        isSubmiting: true,
        authFailureorSuccess: none(),
      );
      failureorSuccess = await detection(
        email: state.email,
        password: state.password,
      );
    }

    yield state.copyWith(
      showErrorMessage: true,
      isSubmiting: false,
      authFailureorSuccess: optionOf(failureorSuccess),
    );
  }
}
