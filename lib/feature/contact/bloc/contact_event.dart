part of 'contact_bloc.dart';

sealed class ContactEvent {
  const ContactEvent();
}

class ContactEventNameChanged extends ContactEvent {
  const ContactEventNameChanged(this.name);

  final String name;
}

class ContactEventEmailChanged extends ContactEvent {
  const ContactEventEmailChanged(this.email);

  final String email;
}

class ContactEventMessageChanged extends ContactEvent {
  const ContactEventMessageChanged(this.message);

  final String message;
}

class ContactEventSubmitted extends ContactEvent {
  const ContactEventSubmitted();
}