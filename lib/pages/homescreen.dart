import 'package:ecommerce/auth/login.dart';
import 'package:ecommerce/pages/details.dart';
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final burger = StateProvider<bool>((ref) => false);
  final icecream = StateProvider<bool>((ref) => false);
  final pizza = StateProvider<bool>((ref) => false);
  final salad = StateProvider<bool>((ref) => false);

    // bool burger = false;
    // bool icecream = false;
    // bool pizza = false;
    // bool salad = false;
  @override
  Widget build(BuildContext context) {
    print('homebuild');
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
              Consumer(
                builder: (context, ref, child){
                final burgers = ref.watch(burger);
                final  icecreams = ref.watch(icecream);
                final pizzas = ref.watch(pizza);
                final salads = ref.watch(salad);
                  return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){

                  ref.read(burger.notifier).state = true;
                   ref.read(icecream.notifier).state = false;
                    ref.read(pizza.notifier).state = false;
                     ref.read(salad.notifier).state = false;
                  // burger = true;
                  // icecream = false;
                  // pizza = false;
                  // salad = false;

                  // setState(() {
                    
                  // });
                },
                child: Material(
                     elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                  child: Container(
                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                    color: burgers? Colors.black :Colors.white 
                                    
                                  ),
                                  child: Image.asset('images/burger.png',height: 45,width: 45,fit: BoxFit.cover,color: burgers?Colors.white:Colors.black,),
                                ),
                ),
              ),

                        GestureDetector(
                                      onTap: (){

                                              ref.read(burger.notifier).state = false;
                   ref.read(icecream.notifier).state = true;
                    ref.read(pizza.notifier).state = false;
                     ref.read(salad.notifier).state = false;
                  // burger = false;
                  // icecream = true;
                  // pizza = false;
                  // salad = false;

                  // setState(() {
                    
                  // });
                },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                                                              decoration: BoxDecoration(
                                                                color: icecreams? Colors.black :Colors.white ,
                                                                 borderRadius: BorderRadius.circular(10),
                                                              ),
                                                              child: Image.asset('images/ice-cream.png',height: 45,width: 45,fit: BoxFit.cover,color: icecreams?Colors.white:Colors.black,),
                                                            ),
                          ),
                        ),

               GestureDetector(
                onTap: (){

                  ref.read(burger.notifier).state = false;
                  ref.read(icecream.notifier).state = false;
                  ref.read(pizza.notifier).state = true;
                  ref.read(salad.notifier).state = false;
                  // burger = false;
                  // icecream = false;
                  // pizza = true;
                  // salad = false;

                  // setState(() {
                    
                  // });
                },
                 child: Material(
                     elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                   child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                    color: pizzas? Colors.black :Colors.white 
                                   ),
                                   child: Image.asset('images/pizza.png',height: 45,width: 45,color: pizzas?Colors.white:Colors.black,),
                                 ),
                 ),
               ),


               GestureDetector(
                      onTap: (){
                    ref.read(burger.notifier).state = false;
                   ref.read(icecream.notifier).state = false;
                    ref.read(pizza.notifier).state = false;
                     ref.read(salad.notifier).state = true;
                  // burger = false;
                  // icecream = false;
                  // pizza = false;
                  // salad = true;

                  // setState(() {
                    
                  // });
                },
                 child: Material(
                     elevation: 5,
                            borderRadius: BorderRadius.circular(8),
                   child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                  color: salads? Colors.black :Colors.white 
                                   ),
                                   child: Image.asset('images/salad.png',height: 45,width: 45, color: salads?Colors.white:Colors.black,),
                                 ),
                 ),
               ),
          
            ],
          );
                },
              ),
              

             

              
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






  // Row showitems() {
  //   return 
  // }
}