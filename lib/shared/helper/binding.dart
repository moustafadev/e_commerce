import 'package:e_commerce/core/view_model/auth_view_model.dart';
import 'package:e_commerce/core/view_model/cart_view_model.dart';
import 'package:e_commerce/core/view_model/control_view_model.dart';
import 'package:e_commerce/core/view_model/home_view_model.dart';
import 'package:e_commerce/core/view_model/user_view_model.dart';
import 'package:e_commerce/shared/helper/local_storage_data.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocalStorageData());
    Get.lazyPut(() => UserViewModel());
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
    Get.put(() => HomeViewModel());
    Get.lazyPut(() => CartViewModel());
    Get.lazyPut(() => LocalStorageData());
    Get.lazyPut(() => UserViewModel());
  }
}