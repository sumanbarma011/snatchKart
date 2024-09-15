import 'package:esnatch/core/utils/formatters/formatter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String firstName;
  final String lastName;
  final String username;
  String email;
  String phoneNumber;
  String proflePicture;

  UserModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.phoneNumber,
      required this.proflePicture});

  // get full name

  String get fullName => "$firstName + $lastName";

// formatted phone number
  String get formattedPhoneNum => TFormatter.formatPhoneNumber(phoneNumber);

  //static function to split full name into first name and last name

  static List<String> nameParts(fullName) => fullName.split(" ");

// static function to generate the username from the full name
  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : " ";
    String camelCaseUsername = "$firstName$lastName";
    String userNameWithPrefix = "cwt_$camelCaseUsername";
    return userNameWithPrefix;
  }

  // static method to create an empty usermodal
  static UserModel empty() => UserModel(
      id: ' ',
      firstName: ' ',
      lastName: ' ',
      username: ' ',
      email: ' ',
      phoneNumber: ' ',
      proflePicture: ' ');

  // convert model to json structure to store the modal in firebase

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LatName': lastName,
      'UserName': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': proflePicture,
    };
  }

  // factor method to create a user modal from a firebase document snapshot
  // factory UserModel.fromSnapshot(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   if (document.data() != null) {
  //     final data = document.data()!;
  //     return UserModel(
  //         id: document.id,
  //         firstName: data['FirstName'] ?? ' ',
  //         lastName: data['LastName'] ?? ' ',
  //         username: data['Username'] ?? ' ',
  //         email: data['Email'] ?? ' ',
  //         phoneNumber: data['PhoneNumber'] ?? ' ',
  //         proflePicture: data['ProflePicture'] ?? ' ');
  //   }
  // }
}
