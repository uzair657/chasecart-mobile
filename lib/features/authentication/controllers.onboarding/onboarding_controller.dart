import 'package:chasecart/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  ///Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

//  Update Current Index When Page Scroll

  void updatePageIndicator(index)=>currentPageIndex.value=index;

//  Jump to specific Dot selected page

  void dotNavigationClick(index){

    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

//  Update current index and jump to next

  void nextPage(){
    if(currentPageIndex.value==2){
      final storage = GetStorage();
      storage.write('FirstTime', false);
      Get.offAll(()=> const LoginScreen());

    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

//  Update Current index and jump to last

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}