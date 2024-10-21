import '../../src.dart';

abstract class BaseApiServices {
  Future<Response> getAPI(String url);
}
