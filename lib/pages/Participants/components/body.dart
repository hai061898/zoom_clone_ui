import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:zoomroom/json/participants.dart';
import 'package:zoomroom/utils/color.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 70),
        child: Column(
          children: List.generate(participants.length, (index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        participants[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            participants[index]['name'],
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            MaterialCommunityIcons.microphone,
                            color: kgrey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            index == 0
                                ? MaterialCommunityIcons.video
                                : MaterialCommunityIcons.video_off,
                            color: index == 0 ? kgrey : kred,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider()
              ],
            );
          }),
        ),
      ),
    );
  }
}
