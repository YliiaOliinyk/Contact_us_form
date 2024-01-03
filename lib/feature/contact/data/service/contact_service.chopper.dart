// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ContactService extends ContactService {
  _$ContactService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ContactService;

  @override
  Future<Response<dynamic>> sendContactForm(ContactRequestBody body) {
    final Uri $url = Uri.parse('/test/contact');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
