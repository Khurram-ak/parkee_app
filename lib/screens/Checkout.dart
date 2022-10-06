import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool isCheckedopt1 = false;
  bool isCheckedopt2 = false;
  bool isCheckedopt3 = false;
  bool payNow = true;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

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
            const SizedBox(
              height: 60,
            ),
            Text("You will pay"),
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
            Center(child: Text("Show Details "))
          ]),
          Positioned(
              bottom: 0,
              child: payNow
                  ? Container(
                      padding: EdgeInsets.only(left: 35, top: 35),
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Select Payment Method"),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 0, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: CircleBorder(),
                                      checkColor: Colors.white,
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isCheckedopt1,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isCheckedopt1 = value!;
                                        });
                                      },
                                    ),
                                    Text("MPESA")
                                  ],
                                ),
                                Text("KES 7.00/min")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 0, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      shape: CircleBorder(),
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isCheckedopt2,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isCheckedopt2 = value!;
                                        });
                                      },
                                    ),
                                    Text("Jhonatha Naondi")
                                  ],
                                ),
                                Text("KES 7.00/min")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 0, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: CircleBorder(),
                                      checkColor: Colors.white,
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isCheckedopt3,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isCheckedopt3 = value!;
                                        });
                                      },
                                    ),
                                    Text("airtel money")
                                  ],
                                ),
                                Text("KES 7.00/min")
                              ],
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  payNow = false;
                                });
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(left: 00, right: 20),
                                  height: 60,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffBB0200)),
                                  child: Center(
                                      child: Text("Pay Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "PoppinsMed",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700))),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ))
                  : Container(
                      padding: EdgeInsets.only(left: 0, top: 15),
                      height: 360,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffD8D8FF)),
                                child: Center(child: Text("KBY"))),
                          ),
                          Center(
                            child: Text("Bill Breakdown"),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Your total payble amount"),
                                Text("KES 630.00"),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),

                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Your total payble amount"),
                                Text("KES 630.00"),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Your total payble amount"),
                                Text("KES 630.00"),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Divider(),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total"),
                                Text("KES 630.00"),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/paymentconfirmation');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 20, right: 20),
                                      height: 50,
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
                          ),




                        ],
                      ))
          ),
          Positioned.fill(
              top: -445,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffD8D8FF)),
                    child: Center(child: Text("KBY"))),
              )),
        ],
      )),
    );
  }
}
