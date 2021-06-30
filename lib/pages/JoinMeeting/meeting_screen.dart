import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:zoomroom/utils/color.dart';

import 'componets/body.dart';

class JoinMeeting extends StatelessWidget {
  const JoinMeeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kheaderAndFooter,
        appBar: buildAppBar(),
        body: Body(),
        );
  }

  AppBar buildAppBar() {
    return AppBar(
     backgroundColor: kheaderAndFooter,
     elevation: 0,
     leading: GestureDetector(  
       onTap: () => Get.back(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Close",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      title: Text("Join a Meeting"),
     
    );
  }


}
