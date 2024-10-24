import 'package:chasecart/utils/exceptions/firebase_exceptions.dart';
import 'package:chasecart/utils/exceptions/format_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../features/personalization/models/user_model.dart';


/// Repository class for user-related operations.
class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  /// Function to save user data to firestore
  Future<void> saveUserRecord(UserModel user)async{
    try{
      await _db.collection('Users').doc(user.id).set(user.toJson());

    }on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    }on FormatException catch(_){
      throw const TFormatException();
    }on PlatformException catch(e){
      throw TFirebaseException(e.code).message;
    }catch(e){
      throw 'Something Went Wrong. Please try again';
    }
  }
  /// Function to fetch user details based on User ID
 ///  Function to update user data in firestore.
///  update any field in specific user collection


}