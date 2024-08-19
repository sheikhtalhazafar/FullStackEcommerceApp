import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/pages/homescreen.dart';
import 'package:ecommerce/pages/order.dart';
import 'package:ecommerce/pages/profile.dart';
import 'package:ecommerce/pages/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int currentindex = 0;
  late List<Widget> pages;
  late HomeScreen home;
  late orderscreen order;
  late walletscreen wallet;
  late profilescreen profile;

    @override
  void initState() {
    home =  HomeScreen();
    order =  orderscreen();
    wallet = walletscreen();
    profile = profilescreen();
    pages =[home,order,wallet,profile];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500), 
        onTap: (int index){
          setState(() {
            currentindex = index;
          });
        },
        items: const [
        Icon(Icons.home_outlined, color: Colors.white,),
        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
        Icon(Icons.wallet_outlined, color: Colors.white,),
        Icon(Icons.person_outline, color: Colors.white,)
      ]),
      body: pages[currentindex],
    );
  }
}