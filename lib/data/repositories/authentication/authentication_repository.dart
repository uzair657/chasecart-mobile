import 'package:chasecart/features/authentication/screens/login/login.dart';
import 'package:chasecart/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final devicesStorage = GetStorage();

  /// Called from main.dart an app launcher
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    ScreenRedirect();
  }

  /// Function To show Relevant Screen
  ScreenRedirect()async{
    /// Local Storage
    if(kDebugMode){
      print("============== GetStorage ==============");
      print(devicesStorage.read(("FirstTime")));
    }
    devicesStorage.writeIfNull('FirstTime', true);
    devicesStorage.read('FirstTime') != true ? Get.offAll(()=> const LoginScreen()): Get.to(const OnBoardingScreen());

  }




  /*--------------------- EMAIL & PASSWORD SIGN IN ---------------------*/
  /// Sign In using Email Auth I will design and add it later
  /// Register Using Email Auth
  /// ReAuthenticate User
  /// Email Verification
  /// Forgot Password

  /*--------------------- Federated identity & Social sign In ---------------------*/
  /// Google Auth
  /// Facebook Auth


  /*--------------------- End Federated identity & Social sign In ---------------------*/
  /// Logout Users valid for any auth
  /// Delete Users Remove userAuth & Firestore account

}
