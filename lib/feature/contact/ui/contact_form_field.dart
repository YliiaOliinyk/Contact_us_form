import 'package:flutter/material.dart';

class ContactFormField extends StatelessWidget {
  const ContactFormField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.errorText,
    this.lines = 1,
  });

  final int lines;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFfdf5ea),
          ),
          child: const Icon(Icons.lock_open, color: Color(0xFFdfbf96)),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: TextField(
            minLines: lines,
            maxLines: lines,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              hintText: hintText,
              errorText: errorText,
            ),
          ),
        ),
      ],
    );
  }
}
