import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../src.dart';

class HttpService {
  Future<http.Response> getRequest(String endpoint) async {
    final url = Uri.parse(ApiUrls.baseUrl + endpoint);
    try {
      final response = await http.get(url).timeout(const Duration(seconds: 30));
      log("GET response: ${response.body}");
      return response;
    } catch (e) {
      log("GET request error: $e");
      rethrow;
    }
  }
}
