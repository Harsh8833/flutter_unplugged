import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:unplugged_flutter/utils/contants.dart';

class FCMServices {
  static Future<http.Response> sendFCM(
      {String? token, String? title, String? description, String? type}) {
    return http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "key=$serverKey",
      },
      body: jsonEncode({
        "to": token.toString(),
        "notification": {
          "title": title,
          "body": description,
        },
        "data": {"type": type}
      }),
    );
  }

  static Future<http.Response> sendFCMTopic(
      {String? to, String? title, String? description, String? type}) {
    return http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "key=$serverKey",
      },
      body: jsonEncode({
        "to": "/topics/${to.toString()}",
        "notification": {
          "title": title,
          "body": description,
        },
        "data": {"type": type}
      }),
    );
  }
}
