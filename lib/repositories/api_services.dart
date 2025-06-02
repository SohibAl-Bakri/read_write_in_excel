import 'package:http/http.dart' as http;

import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class ApiServices {
  ApiServices._();

  static final _instance = ApiServices._();

  factory ApiServices() => _instance;

  Future<http.Response> get({required String endPoint}) async {
    final String url = '${DotenvManager.apiPath}/$endPoint';
    final http.Response response = await http
        .get(Uri.parse(url), headers: _getHeaders())
        .timeout(
          ExceptionManager().timedOutDuration,
          onTimeout: () {
            return http.Response(ExceptionManager.timedOutException, 408);
          },
        );
    ExceptionManager().checkTimedOut(response.statusCode);
    return response;
  }

  Future<http.Response> post({
    required String endPoint,
    required String body,
  }) async {
    final String url = '${DotenvManager.apiPath}/$endPoint';
    final http.Response response = await http
        .post(Uri.parse(url), body: body, headers: _getHeaders())
        .timeout(
          ExceptionManager().timedOutDuration,
          onTimeout: () {
            return http.Response(ExceptionManager.timedOutException, 408);
          },
        );
    ExceptionManager().checkTimedOut(response.statusCode);
    return response;
  }

  Future<http.Response> put({
    required String endPoint,
    required String body,
  }) async {
    final String url = '${DotenvManager.apiPath}/$endPoint';
    final http.Response response = await http
        .put(Uri.parse(url), body: body, headers: _getHeaders())
        .timeout(
          ExceptionManager().timedOutDuration,
          onTimeout: () {
            return http.Response(ExceptionManager.timedOutException, 408);
          },
        );
    ExceptionManager().checkTimedOut(response.statusCode);
    return response;
  }

  Future<http.Response> delete({required String endPoint}) async {
    final String url = '${DotenvManager.apiPath}/$endPoint';
    final http.Response response = await http
        .delete(Uri.parse(url), headers: _getHeaders())
        .timeout(
          ExceptionManager().timedOutDuration,
          onTimeout: () {
            return http.Response(ExceptionManager.timedOutException, 408);
          },
        );
    ExceptionManager().checkTimedOut(response.statusCode);
    return response;
  }

  static Map<String, String> _getHeaders() {
    // final UserModel? userModel = Globals().userModel;
    final Map<String, String> headers = {
      'Accept-Language': localizations.localeName,
      'Content-Type': 'application/json; charset=UTF-8',
      'accept': 'application/json; charset=UTF-8',
    };
    // if (userModel?.jwtToken != null) {
    //   headers['Authorization'] = 'Bearer ${userModel!.jwtToken!}';
    // }
    return headers;
  }
}
