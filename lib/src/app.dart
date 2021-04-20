import 'package:flutter/material.dart';
import 'core/constants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterTips(),
    );
  }
}

class FlutterTips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter tips'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          final tip = kFlutterTips[i];
          return Card(
            child: ListTile(
              title: Text('${i + 1}. ${tip.title}'),
              onTap: () => tip.navigate(context),
            ),
          );
        },
        itemCount: kFlutterTips.length,
      ),
    );
  }
}
