import 'package:chasecart/utils/constants/image_strings.dart';
import 'package:chasecart/utils/helpers/network_manager.dart';
import 'package:chasecart/utils/popups/full_screen_loader.dart';
import 'package:chasecart/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupController extends GetxController{
  static SignupController get instance => Get.find();
  /// Variables
  final hidePassword = true.obs; // Hide or show password
  final privacyPolicy = true.obs; // Hide or show privacy policy checkbox
  final firstName = TextEditingController(); //First name input field controller
  final lastName = TextEditingController(); //Last name input field controller
  final username = TextEditingController(); //username input field controller
  final email = TextEditingController(); //Email Address input field controller
  final phoneNumber = TextEditingController(); //Phone Number input field controller
  final password = TextEditingController(); //Password input field controller
  GlobalKey<FormState> signupFormKey= GlobalKey<FormState>();  // Form key to validate our form
  /// Signup
  Future<void> signup()async{
    try{
      /// Start Loading
      TFullScreenLoader.openLoadingDialog('We are Processing your information', TImages.productsIllustration);
      /// Check Internet is working or not
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) return;

      /// Form Validation
      if(!signupFormKey.currentState!.validate()) return;

      /// Privacy policy check

      /// Register user in the firebase firestore

      /// Show Success Message to the user

      /// Move to verify Email Screen


    }catch(e){
      /// Show Errors to the user
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    }finally{
      /// Remove Loader from the screen
      TFullScreenLoader.stopLoading();
    }
  }


}