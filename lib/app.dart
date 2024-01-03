import 'package:advartage_test_task/feature/contact/ui/contact_scope.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactScope(),
      debugShowCheckedModeBanner: false,
    );
  }
}
