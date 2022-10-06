import 'package:flutter/material.dart';

class PaymentConfirmation extends StatelessWidget {
  const PaymentConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * .7,
            color: Color(0xffC4E3D1),
            child:  Column(
              children: [
                Container(
                  padding:EdgeInsets.only(top:35,left: 20),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: MediaQuery.of(context).size.height * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/assests/images/payment.png'),
                      Text("Payment Confirmed"),
                      Text("Your payment was successful"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
              padding: EdgeInsets.only(left: 0, top: 35),
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffFDDDDC)),
                        child: Center(child: Text("KBY"))),
                  ),
                  SizedBox(height: 5,),
                  Text("You have 2 minutes to "),
                  Text("exit the parking"),

                  SizedBox(
                    height: 25,
                  ),


                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Column(

                      children: [

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),


                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/userdetails');
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffBB0200)),
                              child: Center(
                                  child: Text("Download Receipt",
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
                  ),




                ],
              )))
        ]),
      ),
      
    );
  }
}
