import 'package:ecommerce/auth/login.dart';
import 'package:ecommerce/pages/details.dart';
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
      bool burger = false;
    bool icecream = false;
    bool pizza = false;
    bool salad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20,right: 20,bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Hello Talha', style: Appwidgets.boldtextsyle() ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()async{
                        await FirebaseAuth.instance.signOut().then((value){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Icon(Icons.shopping_cart_checkout_outlined,color: Colors.white, size: 30,),
                      ),
                    ),
                  )
                ],
              ),
            const  SizedBox(
                height: 20,
              ),
              Text('Delicious food', style: Appwidgets.headstyle(),),
              Text('Discover and great food', style: Appwidgets.lighttextstyle(),),
              const  SizedBox(
                height: 15,
              ),
              showitems(),
              const SizedBox(
                height: 30,
              ),
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const details()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('images/salad2.png',width: 150, height: 150, fit: BoxFit.cover,),
                                Text('veggie Tacho hash', style: Appwidgets.semiboldtextstyel(),),
                                Text('fresh and helthy', style: Appwidgets.lighttextstyle(),),
                                Text("\$25 ",style: Appwidgets.boldtextsyle())
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                
                     Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/salad2.png',width: 150, height: 150, fit: BoxFit.cover,),
                              Text('mix weg salad', style: Appwidgets.semiboldtextstyel(),),
                              Text('spicy with onion', style: Appwidgets.lighttextstyle(),),
                              Text("\$28 ",style: Appwidgets.boldtextsyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                
                     Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/salad2.png',width: 150, height: 150, fit: BoxFit.cover,),
                              Text('veggie Tacho hash', style: Appwidgets.semiboldtextstyel(),),
                              Text('fresh and helthy', style: Appwidgets.lighttextstyle(),),
                              Text("\$25 ",style: Appwidgets.boldtextsyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset('images/salad3.png',width: 120, height: 120,fit: BoxFit.fill,),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // width: MediaQuery.of(context).size.width/2.5,
                              child: Text('Mediteraenun chickpea salad', style: Appwidgets.semiboldtextstyel(),),                    
                            ),
                            SizedBox(width: 20,),
                               Container(
                                // width: MediaQuery.of(context).size.width/2,
                              child: Text('Honey got cheese', style: Appwidgets.lighttextstyle(),),                    
                            ),
                             Container(
                              width: MediaQuery.of(context).size.width/2.5,
                              child: Text('\$28', style: Appwidgets.semiboldtextstyel(),),                    
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }






  Row showitems() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  burger = true;
                  icecream = false;
                  pizza = false;
                  salad = false;

                  setState(() {
                    
                  });
                },
                child: Material(
                     elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                  child: Container(
                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                    color: burger? Colors.black :Colors.white 
                                    
                                  ),
                                  child: Image.asset('images/burger.png',height: 45,width: 45,fit: BoxFit.cover,color: burger?Colors.white:Colors.black,),
                                ),
                ),
              ),

                        GestureDetector(
                                      onTap: (){
                  burger = false;
                  icecream = true;
                  pizza = false;
                  salad = false;

                  setState(() {
                    
                  });
                },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: icecream? Colors.black :Colors.white ,
                                                                 borderRadius: BorderRadius.circular(10),
                                                              ),
                                                              child: Image.asset('images/ice-cream.png',height: 45,width: 45,fit: BoxFit.cover,color: icecream?Colors.white:Colors.black,),
                                                            ),
                          ),
                        ),

               GestureDetector(
                onTap: (){
                  burger = false;
                  icecream = false;
                  pizza = true;
                  salad = false;

                  setState(() {
                    
                  });
                },
                 child: Material(
                     elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                   child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                    color: pizza? Colors.black :Colors.white 
                                   ),
                                   child: Image.asset('images/pizza.png',height: 45,width: 45,color: pizza?Colors.white:Colors.black,),
                                 ),
                 ),
               ),


               GestureDetector(
                      onTap: (){
                  burger = false;
                  icecream = false;
                  pizza = false;
                  salad = true;

                  setState(() {
                    
                  });
                },
                 child: Material(
                     elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                   child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                  color: salad? Colors.black :Colors.white 
                                   ),
                                   child: Image.asset('images/salad.png',height: 45,width: 45, color: salad?Colors.white:Colors.black,),
                                 ),
                 ),
               ),
          
            ],
          );
  }
}