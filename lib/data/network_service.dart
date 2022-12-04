import 'dart:convert';

import 'package:http/http.dart';

class NetworkService {

  final baseUrl = "http://10.0.2.2:3000";
  late String targetUrl = "http://10.0.2.2:3000";


  Future<List<dynamic>> fetchMessage(String msg) async {
    try {
      final response = await get(Uri.parse(baseUrl + "/{msg}"));
      // print(response.body);
      return jsonDecode(response.body) as List; 
    } catch (e) {
      // print(e);
      return [];
    }
  }

  Future<bool> patchMessage(Map<String, String> patchObj, int id) async {
    try {
      await patch(Uri.parse(baseUrl + "/msg/$id"), body: patchObj);
      return true;
    } catch (e) {
      return false;
    }
  }

  // Future<Map> addMessage(Map<String, String> msgObj) async {
  //   try {
  //     final response = await post(Uri.parse(baseUrl + "/msg"), body: msgObj);
  //     return jsonDecode(response.body);
  //   } catch (e) {
  //     return cast;
  //   }
  // }

  Future<bool> deleteMessage(int id) async {
    try {
      await delete(Uri.parse(baseUrl + "/msg/$id"));
      return true;
    } catch (er) {
      return false;
    }
  }
  
}