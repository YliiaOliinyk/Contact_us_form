import "dart:async";
import 'package:chopper/chopper.dart';

part "contact_service.chopper.dart";

@ChopperApi(baseUrl: "https://api.byteplex.info/api/test")
abstract class ContactService extends ChopperService {
  @Post(path: '/contact/')
  Future<Response> sendContactForm(
    @Body() Map<String, dynamic> body,
  );

  static ContactService create([ChopperClient? client]) => _$ContactService(client);
}
