import 'dart:async';
import 'dart:io';

import '../MyHomePage.dart';
import '../utils/Constants.dart';
import 'RestApi.dart';

class RestDatasource {
  RestApi _netUtil = new RestApi();

  Map<String, String> requestHeaders = {
    'Content-type': 'application/x-www-form-urlencoded',
    'Accept': 'application/x-www-form-urlencoded',
  };

  Future<String> getWeatherData() {

    // requestHeaders['Content-type']="application/json";
    // requestHeaders['authorization']="token";

    return _netUtil.get(CITY_WEATHER, headers: requestHeaders);
  }

}
