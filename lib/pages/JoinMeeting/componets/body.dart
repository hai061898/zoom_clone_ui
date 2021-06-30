import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoomroom/utils/color.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isSwitchedAudio = true;
  bool isSwitchedVideo = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(color: kgrey.withOpacity(0.03)),
          child: Row(
            children: [
              Container(
                width: Get.width * 0.3,
                height: 40,
              ),
              Container(
                width: Get.width * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: TextField(
                    cursorColor: kprimary,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'ID',
                      hintStyle: TextStyle(color: kgrey.withOpacity(0.3)),
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: kgrey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Join with a personal link name",
          style: TextStyle(color: kprimary),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(color: kgrey.withOpacity(0.03)),
          child: Row(
            children: [
              Container(
                width: Get.width * 0.3,
                height: 40,
              ),
              Container(
                width: Get.width * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: TextField(
                    cursorColor: kprimary,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Screen Name",
                      hintStyle: TextStyle(color: kgrey.withOpacity(0.3)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Get.to(RootApp()),
          child: Container(
            width: Get.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
                color: kprimary, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                "Join",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "If you recieved an invitation link, tab on the link again to join the meeting",
            style: TextStyle(color: kgrey.withOpacity(0.6), height: 1.3),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "JOIN OPTIONS",
              style: TextStyle(color: kgrey.withOpacity(0.6), height: 1.3),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(color: kgrey.withOpacity(0.03)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Don't Connect To Audio",
                  style: TextStyle(
                      color: kgrey,
                      height: 1.3,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Switch(
                  activeColor: kprimary,
                  value: isSwitchedAudio,
                  onChanged: (value) {
                    setState(() {
                      isSwitchedAudio = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
         Container(
          height: 50,
          decoration: BoxDecoration(color: kgrey.withOpacity(0.03)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Turn Off My Video",
                  style: TextStyle(
                      color: kgrey,
                      height: 1.3,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Switch(
                    activeColor: kprimary,
                    value: isSwitchedVideo,
                    onChanged: (value) {
                      setState(() {
                        isSwitchedVideo = value;
                      });
                    })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
