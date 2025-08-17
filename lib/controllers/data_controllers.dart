import 'package:flutter_golang_todo_app/services/service.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  DataService dataService = DataService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;

  Future<void> getData() async {
    _isLoading = true;
    Response response = await dataService.getData();
    if(response.statusCode == 200)
    {
        _myData = response.body;
        print("we got the data");
        update();
    }else {
      print("we didnot got the data");
    }
  }
}