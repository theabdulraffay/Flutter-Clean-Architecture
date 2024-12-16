import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:clean_architecture/Data/Exceptions/app_exceptions.dart';
import 'package:clean_architecture/Data/Network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await http.get(Uri.parse(url)).timeout(
            Duration(
              seconds: 10,
            ),
          );
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw FetchDataException('Failed to fetch data from the API');
      }
    } on SocketException {
      throw NoInternetException(' ');
    } on TimeoutException {
      throw FetchDataException('Time ou ttry again');
    }
  }

  @override
  Future postApi(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.post(Uri.parse(url), body: data).timeout(
            Duration(
              seconds: 10,
            ),
          );
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw FetchDataException('Failed to fetch data from the API');
      }
    } on SocketException {
      throw NoInternetException(' ');
    } on TimeoutException {
      throw FetchDataException('Time ou ttry again');
    }
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 500:
        return json.decode(response.body);
      case 401:
        throw UnauthorisedException('');

      default:
        throw FetchDataException('Failed to fetch data from the API');
    }
  }
}
