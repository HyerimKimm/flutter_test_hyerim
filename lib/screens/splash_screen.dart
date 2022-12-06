import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final sizeOfFullX = size.width;
    final sizeOfFullY = size.height;
    final sizeOfLogoX = size.width*0.3;
    final sizeOfLogoY = size.height*0.3;
      return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(width: sizeOfFullX, height: 20,),
            Center(child: Text('Hyerim\'s New Chellanges!',style: TextStyle(fontFamily: 'grandfa', fontSize: 50))),
            SizedBox(width: sizeOfFullX, height: 20,),
            ExtendedImage.asset('assets/images/newyear_logo.png',width: sizeOfLogoX, height: sizeOfLogoY,),
            SizedBox(width: sizeOfFullX, height: 20,),
            Center(child: CircularProgressIndicator(color: Colors.grey,))
          ],
        ),
      );
  }
}