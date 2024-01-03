import 'package:advartage_test_task/feature/contact/bloc/contact_bloc.dart';
import 'package:advartage_test_task/feature/contact/ui/contact_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact us'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: BlocBuilder<ContactBloc, ContactState>(
          builder: (context, state) {
            return Column(
              children: [
                ContactFormField(
                  hintText: 'Name',
                  errorText: state.nameError,
                  onChanged: (value) => context.read<ContactBloc>().add(ContactEventNameChanged(value)),
                ),
                const SizedBox(height: 24),
                ContactFormField(
                  hintText: 'Email',
                  errorText: state.emailError,
                  onChanged: (value) => context.read<ContactBloc>().add(ContactEventEmailChanged(value)),
                ),
                const SizedBox(height: 24),
                ContactFormField(
                  hintText: 'Message',
                  errorText: state.messageError,
                  lines: 2,
                  onChanged: (value) => context.read<ContactBloc>().add(ContactEventMessageChanged(value)),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: state.processing || state.buttonDisabled ? null : () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => states.contains(MaterialState.disabled) ? Colors.grey : const Color(0xFF916f8c),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    child: Text(
                      state.processing ? 'please wait' : 'Send',
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
