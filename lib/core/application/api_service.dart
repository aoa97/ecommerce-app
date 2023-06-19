import 'package:dio/dio.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';

// DUMMY API data: https://reqres.in -> /api/users

class ApiService {
  final String _baseUrl;
  final LocaleCubit _locale;
  late final Dio _dio;

  ApiService({required String baseUrl, required LocaleCubit locale})
      : _baseUrl = baseUrl,
        _locale = locale {
    _init();
  }

  void _init() {
    final dioOptions = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {'Content-Type': 'application/json', 'accept': 'application/json'},
    );
    _dio = Dio(dioOptions);

    final logger = LogInterceptor(responseHeader: false, responseBody: true, requestBody: true);
    _dio.interceptors.add(logger);
  }

  Options _setReqOptions({bool? auth = false}) {
    return Options(
      headers: {
        "lang": _locale.val.languageCode,
        if (auth!) "Authorization": "Bearer token_here", // TODO: Get token from cached user
      },
    );
  }

  get({
    required String endpoint,
    Map<String, dynamic>? params,
    bool? auth = false,
  }) async {
    return await _dio.get(endpoint, queryParameters: params, options: _setReqOptions(auth: auth));
  }

  Future<Response> post(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
    bool? auth = false,
  }) async {
    return await _dio.post(endpoint, queryParameters: params, data: data, options: _setReqOptions(auth: auth));
  }

  Future<Response> patch(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
    bool? auth = false,
  }) async {
    return await _dio.patch(endpoint, queryParameters: params, data: data, options: _setReqOptions(auth: auth));
  }

  Future<Response> put(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
    bool? auth = false,
  }) async {
    return await _dio.put(endpoint, queryParameters: params, data: data, options: _setReqOptions(auth: auth));
  }

  Future<Response> delete(
    String endpoint, {
    Map<String, dynamic>? params,
    bool? auth = false,
  }) async {
    return await _dio.delete(endpoint, queryParameters: params, options: _setReqOptions(auth: auth));
  }
}
