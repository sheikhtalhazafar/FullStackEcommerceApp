import 'package:ecommerce/auth/login.dart';
import 'package:ecommerce/pages/bottomnavbar.dart';
import 'package:ecommerce/pages/homescreen.dart';
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String  name='', emails='', passwords='';
  TextEditingController namecontroller = TextEditingController();
  TextEditingController  emailcontroller= TextEditingController();
  TextEditingController   passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  
  registration()async{
    try{
      if(passwords!=null){
        UserCredential crendetials = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emails, password: passwords);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(backgroundColor: Color(0xFFff5c30), 
      content: Text('registration sucessfull',style: TextStyle(fontSize: 18, color: Colors.black),)));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const bottomnavbar()));
      }
          }on FirebaseAuthException catch(e){
            if(e.code == 'weak-password'){
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Color(0xFFff5c30),
                 content: Text('password is too weak',style: TextStyle(fontSize: 18,color: Colors.black),)));
            }else if(e.code == 'eamil-already-in-use'){
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Color(0xFFff5c30),
                content: Text('email already exist',style: TextStyle(fontSize: 18,color: Colors.black),)));
            }
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                Color(0xFFff5c30),
                Color(0xFFe74b1a),
              ])
            ),
          ),
        
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/3),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight:Radius.circular(30) )
            ),
          ),
        
          Container(
            margin: const EdgeInsets.only(top: 60, left: 25, right: 25),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Center(child: Image.asset('images/logo.png', width: MediaQuery.sizeOf(context).width/2)),
                 const SizedBox(height: 70,),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 30,),
                          Text('SignUp', style: Appwidgets.boldtextsyle(),),
                          const SizedBox(
                            height: 50,
                          ),
                            TextFormField(
                            controller: namecontroller,
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return 'please enter name';
                              }else{
                                 return null;
                              }                
                            },
                            decoration: InputDecoration(
                              hintText: 'name',
                              hintStyle: Appwidgets.semiboldtextstyel(),
                              prefixIcon: Icon(Icons.email_outlined)
                            ),
                          ),
                              const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                              controller: emailcontroller,
                              validator: (value){
                              if(value==null || value.isEmpty){
                                return 'please enter email';
                              }else{
                                 return null;
                              }                
                            },
                            decoration: InputDecoration(
                              hintText: 'email',
                              hintStyle: Appwidgets.semiboldtextstyel(),
                              prefixIcon: Icon(Icons.email_outlined)
                            ),
                          ),
                              const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: passwordcontroller,
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return 'enter password';
                              }else{
                                return null;
                              }
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'password',
                              hintStyle: Appwidgets.semiboldtextstyel(),
                              prefixIcon: Icon(Icons.lock_outline)
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                      
                             const SizedBox(
                            height: 30,
                          ),
                      
                          GestureDetector(
                            onTap: ()async{
                              if(_formkey.currentState!.validate()){
                                setState(() {
                                name = namecontroller.text;
                                emails = emailcontroller.text;
                                passwords = passwordcontroller.text;
                                });

                                registration();
                              }
                            },
                            child: Material(
                              elevation: 5,
                              borderRadius:  BorderRadius.circular(10),
                              child: Container(
                                padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                  color: Color(0xFFff5c30),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text('SignUP', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 18),),
                              ),
                            ),
                          ),
                       
                        ],
                      ),
                    ),
                  ),
                   const SizedBox(
                    height: 70,
                  ),
                     GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const login()));
                            },
                            child: Text('have an account? LogIn', style: Appwidgets.semiboldtextstyel(),))
                ],
              ),
            ),
          )
        ],),
      ),
    );
  }
}