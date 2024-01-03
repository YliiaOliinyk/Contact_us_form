import "dart:async";
import 'package:advartage_test_task/feature/contact/data/model/contact_request_body.dart';
import 'package:chopper/chopper.dart';

part "contact_service.chopper.dart";

@ChopperApi(baseUrl: "/test")
abstract class ContactService extends ChopperService {
  @Post(path: '/contact')
  Future<Response> sendContactForm(
    @Body() ContactRequestBody body,
  );

  static ContactService create([ChopperClient? client]) => _$ContactService(client);
}
