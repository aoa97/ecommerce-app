import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';

// A Special type of ErrorModel to handle Dio's badResponse [Statuses Error]
abstract class ResponseErrorModel extends ErrorModel {
  ResponseErrorModel({required super.message});

  static ResponseErrorModel parse({required Response response}) {
    final status = response.statusCode;

    switch (status) {
      case HttpStatus.unauthorized:
        return UnauthorizedResponseErrorModel();
      case HttpStatus.notFound:
        return NotFoundResponseErrorModel();
      default:
    }

    return InternalServerResponseErrorModel();
  }
}

class UnauthorizedResponseErrorModel extends ResponseErrorModel {
  UnauthorizedResponseErrorModel() : super(message: "UnauthorizedResponseErrorModel");
}

class NotFoundResponseErrorModel extends ResponseErrorModel {
  NotFoundResponseErrorModel() : super(message: "NotFoundResponseErrorModel");
}

class InternalServerResponseErrorModel extends ResponseErrorModel {
  InternalServerResponseErrorModel() : super(message: "InternalServerResponseErrorModel");
}
