
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:guard_app/app/core/models/api_result.dart';
import 'package:guard_app/app/core/models/respone/randomuser.dart';
import 'package:guard_app/app/core/models/throw_if_no_success.dart';
import 'package:guard_app/utility/enum/env.dart';
import 'package:guard_app/utility/http/ServerError.dart';
import 'package:guard_app/utility/log/Log.dart';
import 'package:guard_app/utility/log/dio_logger.dart';
import 'package:logging/logging.dart';

part 'http_service_impl.dart';

abstract class HttpService{
  static const String TAG = 'HttpService';

  factory HttpService() = HttpServiceImpl;

  Future<ApiResult> getNews();
}