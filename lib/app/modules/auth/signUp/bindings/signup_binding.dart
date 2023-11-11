import 'package:authentication_app/app/modules/auth/signUp/controllers/sign_up_controller.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }

}