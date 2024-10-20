import 'package:chasecart/utils/formatters/formatter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  /// Keep those values final which we don't want to update
  ///
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  /// Constructor for UserModel.
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// Helper Function to get full name
  String get fullName => '$firstName $lastName';

  /// Helper Function to format phone Number
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  /// Static Function to split full name into first and last name.
  static List<String> nameParts(fullName) => fullName.split(" ");

  /// Static function to generate username from the full name
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";
    String camelCaseUsername = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUsername"; // add cwt prefix
    return usernameWithPrefix;
  }

  /// Static function to create and empty user model.
  static UserModel empty() =>
      UserModel(id: "",
          firstName: "",
          lastName: "",
          username: "",
          email: "",
          phoneNumber: "",
          profilePicture: "");

  /// Convert Model into JSON to store data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  ///Factory method to create a UserModel from Firebase document Snapshot
  // factory UserModel.fromSnapshot(
  //     DocumentSnapshot<Map<String, dynamic>> document){
  //   if (document.data() != null) {
  //     final data = document.data()!;
  //     return UserModel(
  //         id: document.id,
  //         firstName: data['FirstName']??'',
  //         lastName: data['LastName']??'',
  //         username: data['Username']??'',
  //         email: data['Email']??'',
  //         phoneNumber:data['PhoneNumber']??'',
  //         profilePicture: data['']??'');
  //   }
  //
  // }

}