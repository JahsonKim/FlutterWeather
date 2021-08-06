import 'dart:async';
import 'dart:convert';
import 'dart:io';
import "package:http/http.dart" as http;
import 'package:http/io_client.dart';

class RestApi {
  static RestApi _instance = new RestApi.internal();
  RestApi.internal();
  bool trustSelfSigned = true;
  factory RestApi() => _instance;
//get function
  Future<String> get(String url, {Map headers, encoding}) async {
    HttpClient httpClient = new HttpClient()
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) => trustSelfSigned);
    IOClient ioClient = new IOClient(httpClient);

    return ioClient.get(Uri.parse(url), headers: headers).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        return res;
        throw new Exception(res);
      }
      return res;
    });
  }
//post function
  Future<String> post(String url, {Map headers, body, encoding}) async {

    try {

      HttpClient httpClient = new HttpClient()
        ..badCertificateCallback =
            ((X509Certificate cert, String host, int port) => trustSelfSigned);
      IOClient ioClient = new IOClient(httpClient);

      final response = await ioClient.post(Uri.parse(url),
          body: body, headers: headers, encoding: encoding);
      if (response.statusCode == 200) {
        return response.body.toString();
      } else {

        return response.body.toString();
      }
    } catch (e) {
       return e.toString();
    }
  }

}
