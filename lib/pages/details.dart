import 'dart:ui';

import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new_outlined)),

              Image.asset('images/salad2.png', 
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mediteranean', style: Appwidgets.semiboldtextstyel(),),
                      Text('chicken salad', style: Appwidgets.boldtextsyle(),)
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if(a>0){
                          a=a-1;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Icon(Icons.remove, color: Colors.white,)),
                  ),
                  Text(a.toString(),style: Appwidgets.boldtextsyle(),),
                   GestureDetector(
                    onTap: (){
                      setState(() {
                        a=a+1;
                      });
                    },
                     child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                        color: Colors.black,
                      ),
                      child: Icon(Icons.add,color: Colors.white,)),
                   ),
                ],
              ),
             Text('n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.', maxLines: 3, style: Appwidgets.lighttextstyle(),),
           const  SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Delivery Time', style: Appwidgets.semiboldtextstyel()),
                SizedBox(width: 30,),
                const Icon(Icons.alarm, color: Colors.black,),
                Text('30 mints', style: Appwidgets.semiboldtextstyel())
              ],
             ),
             Spacer(),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Total price',style: Appwidgets.boldtextsyle(),),
                      Text('\$28',style: Appwidgets.boldtextsyle(),),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2.5,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Add to card', style: TextStyle(fontSize: 20, color: Colors.white)),
                      SizedBox(width: 8,),
                      Icon(Icons.shopping_cart, color: Colors.white,)
                    ],
                  ),
                )
               ],
             )
          ],
        ),
      ),
    );
  }
}