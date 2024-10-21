import 'package:chasecart/data/repositories/authentication/authentication_repository.dart';
import 'package:chasecart/data/repositories/user/user_repository.dart';
import 'package:chasecart/features/authentication/screens/signup/verify_email.dart';
import 'package:chasecart/features/personalization/models/user_model.dart';
import 'package:chasecart/utils/constants/image_strings.dart';
import 'package:chasecart/utils/helpers/network_manager.dart';
import 'package:chasecart/utils/popups/full_screen_loader.dart';
import 'package:chasecart/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupController extends GetxController {
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
  GlobalKey<FormState> signupFormKey = GlobalKey<
      FormState>(); // Form key to validate our form
  /// Signup
  Future<void> signup() async {
    try {
      /// Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are Processing your information', TImages.productsIllustration);

      /// Check Internet is working or not
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      /// Form Validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return ;
      }

      /// Privacy policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In Order to create account, you must have to accept Privacy Policy & Terms of Use.',
        );
      }

      /// Register user in the firebase firestore
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      /// Save User data in the firebase
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: ''
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      /// Remove Loader
      TFullScreenLoader.stopLoading();

      /// Show Success Message to the user
      TLoaders.successSnackBar(title: 'Congratulations',message: 'Your account has been created! Verify email to continue.');

      /// Move to verify Email Screen
      Get.to(()=>const VerifyEmailScreen());

    } catch (e) {
      TFullScreenLoader.stopLoading();
      /// Show Errors to the user
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    }
  }


}