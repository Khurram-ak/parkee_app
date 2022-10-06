import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/welcomescreen');

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:MediaQuery.of(context).size.height * .2),
            Image.asset("lib/assests/images/logo.png"),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Product Of",
                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500 ,fontFamily: "PoppinsSemiBold"),
                  ),
                  Image.asset("lib/assests/images/logo2.png",width: 120,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
