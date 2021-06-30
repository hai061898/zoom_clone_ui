import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoomroom/json/home_item.dart';
import 'package:zoomroom/utils/color.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 0.99,
          height: Get.height,
        //   onPageChanged: (index) {
        //   setState(() {
        //     active = index;
        //   });
        // },
        
          ),
          items: List.generate(homeitems.length, (index){
            return Container(
              width: Get.width,
              height: Get.height,
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Column(
                     children: [
                       Text(homeitems[index]['title'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: kgrey)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(homeitems[index]['description'],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: kgrey))
                     ],
                   ),
                   homeitems[index]['img'] == null
                   ? Container()
                   : Container(
                      width: 280,
                        height: 280,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(homeitems[index]['img']))),
                   )
                ],
              ),
              
            );
          }
          ),
    );
  }
}
