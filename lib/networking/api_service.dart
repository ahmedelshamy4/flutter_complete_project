import 'package:dio/dio.dart';
import 'package:flutter_complete_project/features/presentation/pages/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/features/presentation/pages/login/data/models/login_response.dart';
import 'package:flutter_complete_project/networking/api_constants.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
