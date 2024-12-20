import 'package:cloud_firestore/cloud_firestore.dart';

class firebasehelper{
  Future adduserdetaile(Map<String, dynamic> userinfo, String id)async{
    FirebaseFirestore.instance.collection('users').doc(id).set(userinfo);
  }

  Future updatewallet(String id, String amount)async{
    FirebaseFirestore.instance.collection('users').doc(id).update({
      'wallet' : amount
    });
  }
}