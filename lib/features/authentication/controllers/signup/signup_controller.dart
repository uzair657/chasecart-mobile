import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupController extends GetxController{
  static SignupController get instance => Get.find();
  /// Variables
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

      /// Check Internet is working or not

      /// Form Validation

      /// Privacy policy check

      /// Register user in the firebase firestore

      /// Show Success Message to the user

      /// Move to verify Email Screen


    }catch(e){
      /// Show Errors to the user

    }finally{
      /// Remove Loader from the screen

    }
  }


}