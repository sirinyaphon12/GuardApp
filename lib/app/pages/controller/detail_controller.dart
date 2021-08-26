
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:guard_app/app/core/models/api_result.dart';
import 'package:guard_app/app/core/models/respone/randomuser.dart';
import 'package:guard_app/app/services/http_service.dart';

class DetailController extends  FullLifeCycleController with FullLifeCycle{

  final apiService = HttpService(); //default
  RxBool onLoad = false.obs; //default
  final onError = ApiResult().obs; //default
  final storage = GetStorage(); //default

  final jsonText = ''.obs;


  fetchNews() {
    onLoad(true);
    apiService.getNews().then((value){
      print("sdcverscv ${(value.respone as RandomUser).toJson()}");
      jsonText("result from json =>  ${(value.respone as RandomUser).info.version}");
      onLoad(false);
    });

  }


  String fetchTextFromApi() {
    return "this text is loaded from backend";
  }

  @override
  void onInit() {
    super.onInit();
    print("onInit");

    onLoad.listen((val) {
      if(val){
        Get.defaultDialog(
            title: "dsvcndsjvn dsjv", barrierDismissible: false, radius: 5);
      }else{
        Get.close(0);
      }
    });
  }

  @override
  void onDetached() {
    print("onDetached");
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    print("onInactive");
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    print("onPaused");
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    print("onResumed");
    // TODO: implement onResumed
  }


}