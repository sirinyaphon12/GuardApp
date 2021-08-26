part of 'http_service.dart';

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  HttpServiceImpl() {
    _initLog();
    _dio = Dio(BaseOptions(
      headers: {
        'Authorization': 'B ....',
      },
      baseUrl: FlavorConfig.instance.variables['baseUrl'],
      connectTimeout: 30000,
      receiveTimeout: 30000,
    ));
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      DioLogger.onSend(HttpService.TAG, options);
      return handler.next(options);
    }, onResponse: (response, handler) {
      DioLogger.onSuccess(HttpService.TAG, response);
      return handler.next(response);
    }, onError: (DioError e, handler) {
      DioLogger.onError(HttpService.TAG, e);
      return handler.next(e);
    }));
  }

  void _initLog() {
    Log.init();
    switch (FlavorConfig.instance.variables['env']) {
      case Env.PRODUCTION:
        Log.setLevel(Level.ALL);
        break;
      case Env.STAGING:
        {
          Log.setLevel(Level.ALL);
          break;
        }
    }
  }

  @override
  Future<ApiResult> getNews() async {
    // TODO: implement getRequest

    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{"results": "10"};
    final _data = <String, dynamic>{
      // "phone": phone,
      // "code": code,
      // "ref": ref,
      // "password": password
    };

    Response response;
    try {
      response = await _dio.request<dynamic>('/api',
          queryParameters: queryParameters,
          options: Options(
            method: 'GET',
            extra: _extra,
          ),
          data: _data);
      return ApiResult(
          respone: RandomUser.fromJson(response.data),
          httpCallBack: ThrowIfNoSuccess(status: response.statusCode));
    } on DioError catch (e) {
      return ServerError.dioErrorExpction(e);
    }
  }
}
