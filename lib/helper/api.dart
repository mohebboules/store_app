import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'Status code error in GET method: ${response.statusCode}, with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> post({
    required String url,
    required dynamic body,
    required String? token,
  }) async {
    Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'Error during PUT method ${response.statusCode}, with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put({
    required String url,
    required dynamic body,
    required String? token,
  }) async {
    Map<String, String> headers = {
      'Accept': 'application/json',
    };
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    log('url : $url , body: $body, token: $token');
    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      log(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'Error during PUT method ${response.statusCode}, with body ${jsonDecode(response.body)}');
    }
  }
}
