import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterPovider = StateProvider<int>((ref) => 0);

///Tip2Page
class Tip2Page extends StatelessWidget {
  ///Router for Tip2Page
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => Tip2Page());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog when state change'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          context.read(counterPovider).state++;
        },
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderListener<StateController<int>>(
      provider: counterPovider,
      onChange: (context, value) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        final snackBar = SnackBar(
          content: Text('Count Changed: ${value.state}'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Center(
        child: _Counter(),
      ),
    );
  }
}

class _Counter extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterPovider);
    return Text(
      count.state.toString(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );
  }
}
