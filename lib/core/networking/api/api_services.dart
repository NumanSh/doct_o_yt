import 'package:dio/dio.dart';
import 'package:doct_omar_yt/features/login/data/models/login_respons.dart';
import 'package:retrofit/retrofit.dart';

import '../api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginResponse loginRequestBody,
  );
}
