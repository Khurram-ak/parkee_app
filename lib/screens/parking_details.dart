import 'package:flutter/material.dart';

class ParkingDetails extends StatelessWidget {
  const ParkingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Column(children: [
            Container(
              color: Color(0xffFFF3F1),
              padding: EdgeInsets.only(left: 15, right: 15, top: 50),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_sharp,
                    size: 30,
                  ),
                  Text("KBX at Parking 1")
                ],
              ),
            ),
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffFFF3F1)),
            ),
            // const Divider(
            //   thickness: 1,
            // ),
            const SizedBox(
              height: 60,
            ),
            Text("Accured Bill"),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 155,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xffF1F3F4)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "KES 350.00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("lib/assests/images/start.png"),
                      SizedBox(
                        width: 8,
                      ),
                      Text("START")
                    ],
                  ),
                  Text("JAN 11.30")
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Container(
              height: 40,
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("lib/assests/images/time.png"),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Time Spent")
                    ],
                  ),
                  Text("50 minutes")
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("lib/assests/images/rate.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Rate")
                    ],
                  ),
                  Text("KES 7.00/min")
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Container(
              height: 40,
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("lib/assests/images/base.png"),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Base Pay")
                    ],
                  ),
                  Text("KES 5.00")
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffBB0200)),
                      child: Center(
                          child: Text("Checkout",
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

            SizedBox(
              height: 25,
            ),


          ]),
          Positioned.fill(
              top: -445,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffD8D8FF)),
                    child: Center(child: Text("KBYS"))),
              )),
        ],
      )),
    );
  }
}
