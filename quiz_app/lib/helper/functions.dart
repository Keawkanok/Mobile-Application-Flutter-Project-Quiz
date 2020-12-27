import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HelperFuntions {

  static String UserLoggedInKey = "USERLOGGEDINKEY";

  // Save Login
  // static saveUserLoggedInDetails({@required bool isLoggedin}) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool(UserLoggedInKey, isLoggedin);
  // }

  // static Future<bool> getUserLoggedInDetails() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.get(UserLoggedInKey);
  // }
}