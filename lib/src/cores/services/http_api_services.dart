import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../src.dart';

class HttpApiServices extends BaseApiServices {
  final HttpService service = HttpService();

  @override
  Future<http.Response> getAPI(String url) async {
    try {
      final response = await service.getRequest(url);
      return response;
    } catch (e) {
      log("Error in GET request: $e");
      throw _handleException(e);
    }
  }

  _handleException(dynamic e) {
    if (e is http.ClientException) {
      return const NetworkFailure();
    } else if (e is http.Response && e.statusCode >= 500) {
      return const ServerFailure();
    } else {
      return const UnknownFailure();
    }
  }
}
