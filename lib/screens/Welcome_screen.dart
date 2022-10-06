import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 97, bottom: 67),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  "lib/assests/images/logo.png",
                  width: 150,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *.04,
                ),
                Text(
                  "Welcome to ",
                  style: TextStyle(fontSize: 24, fontFamily: "PoppinsMed"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *.015,
                ),
                Text("Parking App",
                    style: TextStyle(fontSize: 37, fontFamily: "PoppinsMed",fontWeight: FontWeight.w600)),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 12,bottom: 12),
              margin: EdgeInsets.only(left:20,right:20),
              child: TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  ),
                  labelText: 'Enter Your Mobile No. ',
                  labelStyle: TextStyle(

                  color:  Colors.black,
                    fontSize: 20
                  ),

                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/usermobileverification');

                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffBB0200)),
                      child: Center(
                          child: Text("Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "PoppinsMed",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
