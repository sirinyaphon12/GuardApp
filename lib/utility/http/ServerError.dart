

import 'package:dio/dio.dart';
import 'package:guard_app/app/core/models/api_result.dart';
import 'package:guard_app/app/core/models/throw_if_no_success.dart';
import 'package:guard_app/translations/message_key.dart';
import 'package:guard_app/app/core/models/api_result.dart';

class ServerError {
  static ApiResult dioErrorExpction(DioError error) {
    String message = '';

    switch (error.type) {
      case DioErrorType.cancel:
       // message = LocaleKeys.server_error_cancel.tr();
        break;
      case DioErrorType.connectTimeout:
     //   message = LocaleKeys.server_error_timeout_connect.tr();
        break;
      case DioErrorType.other:
      //  message = LocaleKeys.server_error_default.tr();
        break;
      case DioErrorType.receiveTimeout:
       // message = LocaleKeys.server_error_timeout_receive.tr();
        break;
      case DioErrorType.response:
        if (error.response!.statusCode == 406 ||
            error.response!.statusCode == 400) {
          return ApiResult(
              httpCallBack: ThrowIfNoSuccess.fromJson(error.response!.data));
        } else {
        //  message = "${LocaleKeys.server_error_status.tr()}: ${error.response.statusCode}";
        }
        break;
      case DioErrorType.sendTimeout:
       // message = LocaleKeys.server_error_timeout_send.tr();
        break;
    }
    if (error.response != null) {
      return ApiResult(
          httpCallBack: ThrowIfNoSuccess(status: error.response!.statusCode, message: message));
    } else {
      return ApiResult(
          httpCallBack: ThrowIfNoSuccess(status: 000, message: message));
    }
  }
}
