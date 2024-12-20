import 'package:shared_preferences/shared_preferences.dart';

class Sharedreferenceshelper {

  Future<bool> saveuserid(String getuserid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('useridkey', getuserid);
  }

  Future<bool> saveusername(String getusername) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('usernamekey', getusername);
  }

  Future<bool> saveuseremail(String getuseremail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('useremailkey', getuseremail);
  }

  Future<bool> saveuserwallet(String getuserwallet) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('userwalletkey', getuserwallet);
  }



    Future<String?> getuserid() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('useridkey');
  }

    Future<String?> getusername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('usernamekey');
  }

      Future<String?> getuseremail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('useremailkey');
  }

      Future<String?> getuserwallet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('userwalletkey');
  }

}
