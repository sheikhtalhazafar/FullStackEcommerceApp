import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class walletscreen extends StatefulWidget {
  const walletscreen({super.key});

  @override
  State<walletscreen> createState() => _walletscreenState();
}

class _walletscreenState extends State<walletscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: Center(child: Text(
                  "Wallet", style: Appwidgets.headstyle(),
                ),),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2)
              ),
              height: 80,
              child: Row(
                children: [
                  Image.asset('images/wallet.png', fit: BoxFit.cover, height: 60, width: 60,),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('your Wallet', style: Appwidgets.lighttextstyle(),),
                       SizedBox(height: 5),
                      Text('\$'+'100', style: Appwidgets.boldtextsyle(),),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Add money', style: Appwidgets.semiboldtextstyel(),),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('\$'+'100', style: Appwidgets.semiboldtextstyel(),),
                ),
                  Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('\$'+'500', style: Appwidgets.semiboldtextstyel(),),
                ),
                  Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('\$'+'1000', style: Appwidgets.semiboldtextstyel(),),
                ),
                  Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('\$'+'2000', style: Appwidgets.semiboldtextstyel(),),
                ),
              ],
            ),

            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF008080)
              ),
              child: Center(child: Text('Add money', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20),),),
            )
          ],
        ),
      ),
    );
  }
}