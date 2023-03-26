
import 'package:cartoon_api/model/Cartoons_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class CartoonsProvider extends ChangeNotifier{
  Dio? dio;
  List<CartoonsResponse>? data;

  CartoonsProvider(){
    print("cartoons provider constructor");
    dio = Dio(
      BaseOptions(contentType: "Application/json")
    );
  }
  Future<void> getCartoons() async{
    var response = await dio?.get("https://api.sampleapis.com/cartoons/cartoons2D");

    List<dynamic> jsonList = response?.data;
    print("json $jsonList");
    data=jsonList.map((cartoon) => CartoonsResponse.fromJson(cartoon)).toList();
    notifyListeners();
  }
}
