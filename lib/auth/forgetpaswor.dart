import 'package:ecommerce/auth/signup.dart';
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Forgetpasword extends StatefulWidget {
  const Forgetpasword({super.key});

  @override
  State<Forgetpasword> createState() => _ForgetpaswordState();
}

class _ForgetpaswordState extends State<Forgetpasword> {
  final TextEditingController _recoverycontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String email = '';
    void resetpassword()async{
    try{
       if(email!=null){
     await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
     ScaffoldMessenger.of(context).showSnackBar(const SnackBar( backgroundColor: Color(0xFFff5c30) ,content: Text('password reset')));
    }
    }on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found'){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar( backgroundColor: Color(0xFFff5c30) ,content: Text('user not found')));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const  SizedBox(
                    height: 80,
                  ),
                Text('Password Recovery',style: Appwidgets.text1(),),
                Text('Enter your mail',style: Appwidgets.semiboldtextstyel().copyWith(color: Colors.white),),
                 const  SizedBox(
                    height: 50,
                  ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: _recoverycontroller,
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'enter email';
                      }else{
                        return null;
                      }
                    },
                    style: TextStyle(color: Colors.white),
                    decoration:  InputDecoration(
                      prefix: const Icon(Icons.person, color: Colors.white,),
                      hintText: '   Email',
                      hintStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1, color: Colors.white),                   ),
                    ),
                  ),
                ),
                   
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: (){
                     if(_formkey.currentState!.validate()){
                       setState(() {
                        email = _recoverycontroller.text;
                      });
                      resetpassword();
                     }
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(child: Text('Send Email', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                   const  SizedBox(
                      height: 50,
                    ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
                  },
                  child: const Text('do not have an accoutn? create', style: TextStyle(color: Colors.white,fontSize: 18) ,))
                  ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}