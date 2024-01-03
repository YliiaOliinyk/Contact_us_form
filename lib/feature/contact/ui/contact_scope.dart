import 'package:advartage_test_task/feature/contact/bloc/contact_bloc.dart';
import 'package:advartage_test_task/feature/contact/ui/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactScope extends StatelessWidget {
  const ContactScope({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(),
      child: const ContactScreen(),
    );
  }
}