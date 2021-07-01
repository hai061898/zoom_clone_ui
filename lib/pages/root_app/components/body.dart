import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Stack( 
        children: [
          Positioned(
            top: 15,
            right: 15,
            child: Container(  
               width: 120,
               height: 170,
               decoration: BoxDecoration(  
                 borderRadius: BorderRadius.circular(12),
                 image: DecorationImage(
                   image: NetworkImage(
                     "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-0/c77.0.206.206a/p206x206/128057038_518526995769985_2718336416444815185_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=da31f3&_nc_ohc=8xi9qbMFxmgAX-0jwae&_nc_ht=scontent-sin6-2.xx&tp=27&oh=70978cbc7d9ca240e0257bbfde75978d&oe=60E225AF",
                                        
                   ),
                   fit: BoxFit.cover,
                 ),
               ),
            ),
           

          ),
          Center(
            child: Container( 
              width: 150,
              height: 150, 
              decoration: BoxDecoration(  
                image: DecorationImage(
                  image: NetworkImage(
                    "https://scontent-sin6-4.xx.fbcdn.net/v/t1.6435-0/p206x206/118070799_439037910385561_5878043650180951472_n.jpg?_nc_cat=100&_nc_rgb565=1&ccb=1-3&_nc_sid=da31f3&_nc_ohc=BamTPl1HTcQAX8Sb2Zm&tn=PAqJf8NV9eRLU-Q2&_nc_ht=scontent-sin6-4.xx&tp=6&oh=4447a9d8501505b23acdd217ae3bab4e&oe=60E2155A"
                  ),
                  fit: BoxFit.cover,
                ),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}