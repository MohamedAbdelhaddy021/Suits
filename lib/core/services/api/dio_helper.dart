import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../cache_helper.dart';

class DioHelper {
  DioHelper._internal() {
    _init();
  }

  static final DioHelper instance = DioHelper._internal();

  late Dio dio;

  void _init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "BASE API",
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {"Accept": "application/json"},
      ),
    );
  }

  Future<CustomResponse?> get(
    String endpoint, {
    Map<String, dynamic>? query,
  }) async {
    try {
      _logRequest("GET", endpoint, query: query);

      final response = await dio.get(
        endpoint,
        queryParameters: query,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.userToken}"},
        ),
      );

      _logResponse(response);
      return CustomResponse(
        message: "Success",
        response: response,
        isSuccess: true,
      );
    } on DioException catch (e) {
      _logError(e);
    } catch (e) {
      _logError(e);
    }
    return null;
  }

  Future<CustomResponse?> post(
    String endpoint, {
    Map<String, dynamic>? data,
  }) async {
    try {
      _logRequest("POST", endpoint, body: data);

      final response = await dio.post(
        endpoint,
        data: data,
        queryParameters: data,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.userToken}"},
        ),
      );
      _logResponse(response);
      return CustomResponse(
        message: "Success",
        response: response,
        isSuccess: true,
      );
    } on DioException catch (e) {
      _logError(e);
    } catch (e) {
      _logError(e);
    }
    return null;
  }

  Future<CustomResponse?> put(
    String endpoint, {
    Map<String, dynamic>? data,
  }) async {
    try {
      _logRequest("PUT", endpoint, body: data);

      final response = await dio.put(
        endpoint,
        data: data,
        queryParameters: data,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.userToken}"},
        ),
      );
      _logResponse(response);
      return CustomResponse(
        message: "Success",
        response: response,
        isSuccess: true,
      );
    } on DioException catch (e) {
      _logError(e);
    } catch (e) {
      _logError(e);
    }
    return null;
  }

  Future<CustomResponse?> delete(
    String endpoint, {
    Map<String, dynamic>? data,
  }) async {
    try {
      _logRequest("DELETE", endpoint, body: data);

      final response = await dio.delete(
        endpoint,
        data: data,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.userToken}"},
        ),
      );

      _logResponse(response);
      return CustomResponse(
        message: "Request is success",
        response: response,
        isSuccess: true,
      );
    } on DioException catch (e) {
      log(e.response?.data['message'] ?? "Unexpected Error");
    } catch (e) {
      _logError(e);
    }
    return null;
  }

  void _logRequest(
    String method,
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
  }) {
    debugPrint("\n🟡 ===== REQUEST =====");
    debugPrint("➡️ METHOD: $method");
    debugPrint("➡️ ENDPOINT: $endpoint");

    if (query != null) {
      log("➡️ QUERY: $query");
    }

    if (body != null) {
      log("➡️ BODY: $body");
    }

    log("======================\n");
  }

  // ================= LOG RESPONSE ================= //
  void _logResponse(Response response) {
    log("\n🟢 ===== RESPONSE =====");
    log("⬅️ STATUS: ${response.statusCode}");
    log("⬅️ DATA: ${response.data}");
    log("=======================\n");
  }

  // ================= LOG ERROR ================= //
  void _logError(dynamic e) {
    debugPrint("\n🔴 ===== ERROR =====");

    if (e is DioException) {
      log("❌ TYPE: ${e.type}");
      log("❌ MESSAGE: ${e.message}");
      log("❌ RESPONSE: ${e.response?.data}");
    } else {
      log("❌ ERROR: $e");
    }

    log("=====================\n");
  }
}

class CustomResponse {
  final String message;
  final Response? response;
  final bool isSuccess;
  CustomResponse({
    required this.message,
    required this.response,
    required this.isSuccess,
  });
}
