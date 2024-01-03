

import 'package:flutter_bloc/flutter_bloc.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactState(name: '', email: '', message: '')) {
    on<ContactEventNameChanged>((event, emit) {
      if (event.name.isEmpty) {
        emit(
          state.copyWith(
            name: event.name,
            nameError: 'Name is empty',
            emailError: state.emailError,
            messageError: state.messageError,
            buttonDisabled: true,
          ),
        );
      } else {
        emit(
          state.copyWith(
            name: event.name,
            nameError: null,
            emailError: state.emailError,
            messageError: state.messageError,
            buttonDisabled: !(state.isValid && state.allFieldEntered),
          ),
        );
      }
    });
    on<ContactEventMessageChanged>((event, emit) {
      if (event.message.isEmpty) {
        emit(
          state.copyWith(
            name: state.name,
            email: state.email,
            message: event.message,
            nameError: state.nameError,
            emailError: state.emailError,
            messageError: 'Message is empty',
            buttonDisabled: true,
          ),
        );
      } else {
        emit(
          state.copyWith(
            name: state.name,
            email: state.email,
            message: event.message,
            nameError: state.nameError,
            emailError: state.emailError,
            messageError: null,
            buttonDisabled:  !(state.isValid && state.allFieldEntered),
          ),
        );
      }
    });
    on<ContactEventEmailChanged>((event, emit) {
      RegExp regex = RegExp(
        r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
      );
      final emailValided = regex.hasMatch(event.email);
      if (emailValided) {
        emit(
          state.copyWith(
            name: state.name,
            email: event.email,
            message: state.message,
            nameError: state.nameError,
            emailError: null,
            messageError: state.messageError,
            buttonDisabled:  !(state.isValid && state.allFieldEntered),
          ),
        );
      } else {
        emit(
          state.copyWith(
            name: state.name,
            email: event.email,
            message: state.message,
            nameError: state.nameError,
            emailError: 'Email is invalid',
            messageError: state.messageError,
            buttonDisabled: true,
          ),
        );
      }
    });
  }
}
