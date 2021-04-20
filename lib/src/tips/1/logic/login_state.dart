part of 'login_provider.dart';

@freezed
abstract class LoginState with _$LoginState {
  /// Data is present state
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
  }) = _LoginState;
}
