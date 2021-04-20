import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tips/src/tips/1/logic/login_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///LoginPage
class Tip1Page extends StatelessWidget {
  ///LoginPage constructor
  const Tip1Page({Key? key}) : super(key: key);

  ///LoginPage [routeName]
  static const routeName = 'LoginPage';

  ///Router for LoginPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const Tip1Page());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Text(
              'See the DebugConsole and check which component rebuild when you type',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            _Email(),
            _Password(),
          ],
        ),
      ),
    );
  }
}

class _Email extends HookWidget {
  @override
  Widget build(BuildContext context) {
    print('Email rebuilding');
    final email = useProvider(
      loginNotifierProvider.select(
        (state) => state.email,
      ),
    );

    final loginNotifier = context.read(loginNotifierProvider.notifier);

    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        errorText: email.isEmpty ? "Can't be emtpy" : null,
      ),
      onChanged: loginNotifier.emailChanged,
    );
  }
}

class _Password extends HookWidget {
  @override
  Widget build(BuildContext context) {
    print('Password rebuilding');

    final password = useProvider(
      loginNotifierProvider.select(
        (state) => state.password,
      ),
    );

    final loginNotifier = context.read(loginNotifierProvider.notifier);

    return TextField(
      decoration: InputDecoration(
        labelText: 'Password',
        errorText: password.isEmpty ? "Can't be emtpy" : null,
      ),
      onChanged: loginNotifier.passwordChange,
    );
  }
}
