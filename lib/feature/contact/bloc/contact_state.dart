part of 'contact_bloc.dart';

class ContactState {
  final String name;
  final String email;
  final String message;

  final String? nameError;
  final String? emailError;
  final String? messageError;

  final bool processing;
  final bool buttonDisabled;

  final String? notification;
  

  bool get isValid => nameError == null && emailError == null && messageError == null;
  bool get allFieldEntered => name.isNotEmpty && email.isNotEmpty && message.isNotEmpty;


  ContactState({
    required this.name,
    required this.email,
    required this.message,
    this.nameError,
    this.emailError,
    this.messageError,
    this.notification,
    this.processing = false,
    this.buttonDisabled = true,
  });

  ContactState copyWith({
    String? name,
    String? email,
    String? message,
    String? nameError,
    String? emailError,
    String? messageError,
    String? notification,
    bool? processing,
    bool? buttonDisabled,
  }) {
    return ContactState(
      name: name ?? this.name,
      email: email ?? this.email,
      message: message ?? this.message,
      nameError: nameError,
      emailError: emailError,
      messageError: messageError,
      notification: notification,
      processing: processing ?? this.processing,
      buttonDisabled: buttonDisabled ?? this.buttonDisabled,
    );
  }
}
