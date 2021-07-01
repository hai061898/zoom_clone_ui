import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:zoomroom/json/items.dart';
import 'package:zoomroom/pages/home/home_screen.dart';
import 'package:zoomroom/pages/root_app/components/footer.dart';
import 'package:zoomroom/utils/color.dart';

import 'components/body.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Footer(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kheaderAndFooter,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Octicons.mute,
                color: kgrey,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                AntDesign.camera,
                color: kgrey,
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.security_outlined,
                color: kgreen,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Zoom",
                style: TextStyle(
                    fontSize: 17, color: kgrey, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: kgrey,
                size: 20,
              ),
            ],
          ),
          GestureDetector(
            onTap: () => Get.to(HomeScreen()),
            child: Container(
              decoration: BoxDecoration(
                  color: kred, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 5,
                  bottom: 5,
                ),
                child: Text("Leave",
                    style: TextStyle(
                        fontSize: 15,
                        color: kgrey,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: kheaderAndFooter,
          border: Border(
              top: BorderSide(width: 2, color: kblack.withOpacity(0.06)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(textItems.length, (index) {
              return InkWell(
                onTap: (){

                },
              );
            })),
      ),
    );
  }

}
