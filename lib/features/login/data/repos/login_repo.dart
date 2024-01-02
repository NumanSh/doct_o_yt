import 'package:doct_omar_yt/core/networking/api/api_services.dart';
import 'package:doct_omar_yt/core/networking/api_error_handler.dart';
import 'package:doct_omar_yt/core/networking/api_result.dart';
import 'package:doct_omar_yt/features/login/data/models/login_respons.dart';

import '../models/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      ///////////////////////////////////////////////////////////////////////////////////
      final response =
          await _apiService.login(loginRequestBody as LoginResponse);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
