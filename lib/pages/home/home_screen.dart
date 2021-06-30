import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoomroom/pages/JoinMeeting/meeting_screen.dart';
import 'package:zoomroom/utils/color.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: buildBottom(),
    );
  }

  AppBar buildAppBar(){
    int active = 0;
    return AppBar(
      elevation: 0,
      backgroundColor: kheaderAndFooter,
      title: Row(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.settings,
          color: kgrey,),
          Spacer(),
          Row(
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(  
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(  
                    shape: BoxShape.circle,
                    color: active == index ? kgrey : kgrey.withOpacity(0.2),
                  ),
                ),
              );
            }),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget buildBottom(){
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: kheaderAndFooter,
      ),
      child: Padding(  
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: ()=>Get.to(JoinMeeting()),
              child: Container( 
                 width: Get.width * 0.75,
                height: 50,
                decoration: BoxDecoration(
                    color: kprimary, borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Join a Meeting",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            
            
            
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: kprimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                      color: kprimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}