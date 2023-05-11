import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';

class DioService {
  static const baseUrl = 'https://randomuser.me/api/';

  static final BaseOptions _baseDioOption = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10), // 60 seconds
      receiveTimeout: const Duration(seconds: 10));

  static BaseOptions _baseOption() {
    return BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-type': 'application/json',
          'Accept-Version': 'v1',
          'Accept': 'application/json',
        },
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10));
  }

  Dio dio = Dio(_baseOption());

  Future<Map<String, dynamic>?> get({required String api, required Map<String, dynamic> params}) async {
    try {
      Response response = await dio.get(api, queryParameters: params);
      if (response.statusCode == 200) {
        return response.data;
      }
      return null;
    } on DioError catch (e) {
      log('This is dio error --- ${jsonEncode(e.response?.data)}');
      return e.response?.data;
    }
  }

  Future<Map<String, dynamic>?> post({required String api, required Map<String, dynamic> params}) async {
    try {
      Response response = await dio.post(api, data: params);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      }
      return null;
    } on DioError catch (e) {
      log(jsonEncode(e.response?.data));
      return e.response?.data;
    }
  }

  Future<Map<String, dynamic>?> put({required String api, required Map<String, dynamic> params}) async {
    try {
      Response response = await dio.put(api, data: jsonEncode(params));
      if (response.statusCode == 200) {
        return response.data;
      }
      return null;
    } on DioError catch (e) {
      log(jsonEncode(e.response?.data));
      return e.response?.data;
    }
  }

  Future<Map<String, dynamic>?> delete({required String api, required Map<String, dynamic> params}) async {
    try {
      Response response = await dio.delete(api, data: jsonEncode(params));
      if (response.statusCode == 200) {
        return response.data;
      }
      return null;
    } on DioError catch (e) {
      log(jsonEncode(e.response?.data));
      return e.response?.data;
    }
  }
}
