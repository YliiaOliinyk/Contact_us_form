import 'package:advartage_test_task/feature/contact/ui/contact_form_field.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            const ContactFormField(
              hintText: 'Name',
            ),
            const SizedBox(height: 24),
            const ContactFormField(
              hintText: 'Email',
            ),
            const SizedBox(height: 24),
            const ContactFormField(
              hintText: 'Message',
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF916f8c)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
