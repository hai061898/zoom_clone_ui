import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoomroom/json/items.dart';
import 'package:zoomroom/pages/Participants/participants_screen.dart';
import 'package:zoomroom/utils/color.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int pageIndex = 2;

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });

    if (index == 3) {
      Get.to(ParticipantScreen());
    }
    if (index == 4) {
      getBottom();
    }
  }

  getBottom() {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
              actions: List.generate(actionSheetItems.length, (index) {
                if (actionSheetItems[index] == "Disconnect Audio") {
                  return CupertinoActionSheetAction(
                    child: Text(
                      actionSheetItems[index],
                      style: TextStyle(
                        color: kred,
                      ),
                    ),
                    onPressed: () => Get.back(),
                  );
                } else if (actionSheetItems[index] ==
                    " 👏   👍   💔   🤣   😮   🎉") {
                  return CupertinoActionSheetAction(
                    child: Text(
                      actionSheetItems[index],
                      style: TextStyle(fontSize: 25),
                    ),
                    onPressed: () => Get.back(),
                  );
                }
                return CupertinoActionSheetAction(
                  child: Text(actionSheetItems[index]),
                  onPressed: () {
                    Navigator.pop(context, 'One');
                  },
                );
              }),
              cancelButton: CupertinoActionSheetAction(
                child: const Text(
                  'Cancel',
                ),
                isDefaultAction: true,
                onPressed: () => Get.back(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: kheaderAndFooter,
          border: Border(
              top: BorderSide(width: 2, color: kblack.withOpacity(0.06)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(bottomItems[index],
                        size: sizedItems[index], color: colorItems[index]),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      textItems[index],
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: colorItems[index]),
                    )
                  ],
                ));
          }),
        ),
      ),
    );
  }
}
