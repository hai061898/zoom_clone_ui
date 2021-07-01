import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoomroom/json/participants.dart';
import 'package:zoomroom/pages/home/components/body.dart';
import 'package:zoomroom/utils/color.dart';

class ParticipantScreen extends StatelessWidget {
  const ParticipantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kheaderAndFooter,
      appBar: buildAppBar(),
      body: Body(),
      bottomSheet: buildBottomBar(),
    );
  }

  AppBar buildAppBar() {
    var participantsCount = participants.length;
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
      title: Text("Participants ($participantsCount)"),
    );
  }

  Widget buildBottomBar() {
    return Container(
      width: Get.width,
      height: 80,
      decoration: BoxDecoration(color: kblack),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: kheaderAndFooter,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Invite",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
