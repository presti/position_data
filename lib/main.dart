import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'providers/injector.dart';
import 'theme/res_value.dart';

void main() {
  Injector.putDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ResValue.appTitle,
      home: HomePage(),
    );
  }
}
