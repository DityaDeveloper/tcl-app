import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../config/app_environment.dart';

part '_payload_data.dart';

class ApiClient {
  final PayloadData payloadData = PayloadData();
  String envBaseurl = AppEnvironment.instance.baseUrl;

  Future post(
      {required pathUrl,
      required Map requestBody,
      required String token}) async {
    final fullUrl = envBaseurl + pathUrl;
    Map<String, String> headers = {};
    if (token == '') {
      headers = {
        "Content-Type": "application/json"
        //"X-CSRF-Token": "",
      };
    } else {
      headers = {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json"
        //"X-CSRF-Token": "",
      };
    }
    try {
      print('full uri : $fullUrl');
      final response = await http.Client()
          .post(
        Uri.parse(fullUrl),
        headers: headers,
        body: jsonEncode(requestBody),
      )
          .timeout(const Duration(seconds: 30), onTimeout: () {
        debugPrint('Request Timeout');
        return http.Response('Request Timeout', 408);
      }).onError((error, stackTrace) {
        debugPrint('invalid connection');
        return http.Response('Internal Server Error', 500);
      });
      return payloadData.catchPayloadData(response);
    } finally {
      http.Client().close();
    }
  }

  Future get({required pathUrl, required String token}) async {
    final fullUrl = envBaseurl + pathUrl;
      print('full uri : $fullUrl');
    Map<String, String> headers = {};
    if (token == '') {
      headers = {
       // "Content-Type": "application/json"
        //"X-CSRF-Token": "",
      };
    } else {
      headers = {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json"
        //"X-CSRF-Token": "",
      };
    }

    try {
      final response = await http.Client()
          .get(Uri.parse(fullUrl), headers: headers)
          .timeout(const Duration(seconds: 30), onTimeout: () {
        debugPrint('Request Timeout');
        return http.Response('Request Timeout', 408);
      }).onError((error, stackTrace) {
        debugPrint('invalid connection');
        return http.Response('Internal Server Error', 500);
      });
      return payloadData.catchPayloadData(response);
    } finally {
      http.Client().close();
    }
  }

  String getQueryString(Map params,
      {String prefix = '&', bool inRecursion = false}) {
    String query = '';

    params.forEach((key, value) {
      if (inRecursion) {
        key = '[$key]';
      }

      if (value is String || value is int || value is double || value is bool) {
        query += '$prefix$key=$value';
      } else if (value is List || value is Map) {
        if (value is List) value = value.asMap();
        value.forEach((k, v) {
          query +=
              getQueryString({k: v}, prefix: '$prefix$key', inRecursion: true);
        });
      }
    });

    return query;
  }
}
