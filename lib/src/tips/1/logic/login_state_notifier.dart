part of 'login_provider.dart';

/// Defines all the Login logic the app will use
class LoginNotifier extends StateNotifier<LoginState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  LoginNotifier() : super(LoginState());

  void emailChanged(String value) {
    state = state.copyWith(email: value);
  }

  void passwordChange(String value) {
    state = state.copyWith(password: value);
  }
}
