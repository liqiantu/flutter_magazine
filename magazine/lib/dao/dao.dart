import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:magazine/models/recommend_model.dart';

var cookie =
    "__did=CNpamaD2U_EAAABR; __sid=CNpamaD2U_EAAABB; apptoken=5SF5by2/C/IuSpZFIxSi6ZtROrzhK6DvvOI9UpUeeJ4vizmtVo+UDR52IervVkBvdq8YM7N8udhuo0sAoiY/Qw==; ticket=lRkEO3GvpvjFd9hkdoLeemkBdGccnFT0yN-1iaIrsSDCjvlu1ANBP3PgdUjkUknpHGZkvxPNEZGf74Bq8pc3qg==";
const referer =
    "https://ntdzwx.dps.qikan.cn/Template/WeChatLibrary4/index.html";

class Dao {
  final baseUrl = "";
  late final Dio dio;

  Dao() {
    this.dio = Dio();
    dio.options.baseUrl = 'https://ntdzwx.dps.qikan.cn/api';
    dio.options.responseType = ResponseType.plain;
    dio.options.connectTimeout = 5000;
    dio.options.receiveTimeout = 3000;
    dio.options.headers = {"cookie": cookie, "referer": referer};
  }

  Future<dynamic> getRecMag() async {
    Response response = await dio
        .get('/magazine/whole/Recomm', queryParameters: {'kind': 1, 'top': 99});
    var json = jsonDecode(response.data.toString());
    return json;
  }

  Future<dynamic> getRecBook() async {
    Response response = await dio
        .get('/book/whole/Recomm', queryParameters: {'kind': 1, 'top': 99});
    var json = jsonDecode(response.data.toString());
    return json;
  }

  Future<dynamic> getRecAudio() async {
    Response response = await dio
        .get('/audio/whole/Recomm', queryParameters: {'kind': 1, 'top': 99});
    var json = jsonDecode(response.data.toString());
    return json;
  }

  Future<dynamic> getRecNews() async {
    Response response = await dio.get('/newspaper/whole/Recomm',
        queryParameters: {'kind': 1, 'top': 99});
    var json = jsonDecode(response.data.toString());
    return json;
  }

  Future<dynamic> getRecAll() async {
    return await Future.wait<dynamic>(
        [getRecMag(), getRecBook(), getRecAudio(), getRecNews()]);
  }
}
