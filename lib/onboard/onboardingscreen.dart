import 'package:ecommerce/auth/login.dart';
import 'package:ecommerce/onboard/onboardContent.dart';
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class onboard extends StatefulWidget {
  const onboard({super.key});

  @override
  State<onboard> createState() => _onboardState();
}

// ignore: camel_case_types
class _onboardState extends State<onboard> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Expanded(
            child: PageView.builder(
              itemCount: Content.length,
              controller: _controller,
              onPageChanged: (int value){
                setState(() {
                  currentIndex = value;
                });
              },
              itemBuilder: (_,index){
                return  Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(Content[index].image, height: 300, width: MediaQuery.of(context).size.width/1.5, fit: BoxFit.cover,),
                     const SizedBox(
                        height: 40,
                      ),
                      Text(Content[index].title, style: Appwidgets.semiboldtextstyel(),),
                      Text(Content[index].description, style: Appwidgets.lighttextstyle(),),
                    ],
                  ),
                );
              }),
          ),
      
            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(Content.length, (index) => buildot(context, index))
              ),
            ),
      
            GestureDetector(
              onTap: (){
                if(currentIndex == Content.length-1){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const login()));
                  _controller.nextPage(duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
                }
              },
              child:currentIndex == Content.length-1 ? Container(
                margin: const EdgeInsets.all(40),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:const  Color(0xFFff5c30),
                  borderRadius: BorderRadius.circular(13)
                ),
                child: 
                 const Center(child:  Text('start', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20),)) 
        
              ) : const SizedBox(),
            )
        ],
      ),
    );
  }
Container buildot(BuildContext context, int index){
  return Container(
    margin: EdgeInsets.all(3),
    height: 10,
    width:  currentIndex == index ? 18 : 7,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
}