import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/application/api_service/error/response_error_model.dart';

class ErrorModel {
  final String message;

  ErrorModel({required this.message});

  static ErrorModel parse(Object e) {
    if (e is DioException) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout || DioExceptionType.receiveTimeout || DioExceptionType.sendTimeout:
          return TimeoutErrorModel();
        case DioExceptionType.badResponse:
          return ResponseErrorModel.parse(response: e.response!);
        case DioExceptionType.unknown:
          if (e.error is SocketException) {
            return SocketErrorModel();
          }
        default:
      }
    }
    return UnexpectedErrorModel();
  }
}

class TimeoutErrorModel extends ErrorModel {
  TimeoutErrorModel() : super(message: "TimeoutErrorModel");
}

class SocketErrorModel extends ErrorModel {
  SocketErrorModel() : super(message: "SocketErrorModel");
}

class UnexpectedErrorModel extends ErrorModel {
  UnexpectedErrorModel() : super(message: "UnexpectedErrorModel");
}
