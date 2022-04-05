import 'package:applover/domain/auth/use_cases/login_use_case.dart';
import 'package:applover/domain/entities/user_credentials.dart';
import 'package:applover/presentation/login_page/cubit/login_cubit.dart';
import 'package:applover/presentation/login_page/cubit/login_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'login_cubit_test.mocks.dart';

@GenerateMocks([LoginUseCase])
void main() {
  late MockLoginUseCase loginUseCase;
  late LoginCubit loginCubit;
  late UserCredentials userCredentials;
  final error = Exception();

  setUp(() {
    loginUseCase = MockLoginUseCase();
    loginCubit = LoginCubit(loginUseCase);
    userCredentials = const UserCredentials('value', 'password');
  });

  blocTest(
    'Cubit on success login should emit[LoginState.loading(), LoginState.success()]',
    build: () => loginCubit,
    act: (LoginCubit cubit) => cubit.login('email', 'password'),
    expect: () => [
      const LoginState.loading(),
      const LoginState.success()
    ],
  );
  blocTest(
    'Cubit on init() should emit[LoginState.show()]',
    build: () => loginCubit,
    act: (LoginCubit cubit) => cubit.init(),
    expect: () => [const LoginState.show()],
  );
}
