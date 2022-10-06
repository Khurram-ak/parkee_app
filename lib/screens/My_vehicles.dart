import 'package:flutter/material.dart';

class MyVehicles extends StatefulWidget {
  const MyVehicles({Key? key}) : super(key: key);

  @override
  State<MyVehicles> createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: Color(0xffFFF3F1)),
        padding: EdgeInsets.only(top: 35, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 8,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  size: 33,
                )),
            SizedBox(
              width: 8,
            ),
            Container(
              child: Text(
                "My Vehicles",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: "ManropeSemiBold"),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 17,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/vehicledetails');
        },
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                        height: 74,
                        width: 74,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffD8D8FF)),
                        child: Center(
                            child: Image.asset(
                                "lib/assests/images/parkingcar.png"))),
                    SizedBox(
                      width: 9,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("KBY 202 Y"),
                        Text("Last Parked 22/Jan"),
                      ],
                    )
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
      Divider(),
      Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      height: 74,
                      width: 74,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffD8D8FF)),
                      child: Center(
                          child: Image.asset(
                              "lib/assests/images/parkingcar.png"))),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("KBY 202 Y"),
                      Text("Last Parked 22/Jan"),
                    ],
                  )
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
      Divider(),
      Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      height: 74,
                      width: 74,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffD8D8FF)),
                      child: Center(
                          child: Image.asset(
                              "lib/assests/images/parkingcar.png"))),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("KBY 202 Y"),
                      Text("Last Parked 22/Jan"),
                    ],
                  )
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
      Divider(),
      Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      height: 74,
                      width: 74,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffD8D8FF)),
                      child: Center(
                          child: Image.asset(
                              "lib/assests/images/parkingcar.png"))),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("KBY 202 Y"),
                      Text("Last Parked 22/Jan"),
                    ],
                  )
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
      Divider(),
      Spacer(),
      Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Image.asset("lib/assests/images/line.png"),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 92,
                              width: 92,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFFF3F1)),
                            child: Center(
                              child: SizedBox(
                                  child: Image.asset("lib/assests/images/redcar.png",)),
                            ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text("Please enter your plate number",style: TextStyle(fontFamily: "ManropeSemiBold",fontSize: 20),),
                            SizedBox(height: 15,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 65,
                                      width: MediaQuery.of(context).size.width * .15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffF1F3F4)),
                                      child: Center(
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 17, fontWeight: FontWeight.w600),
                                          ))),
                                  Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 65,
                                      width: MediaQuery.of(context).size.width * .15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffF1F3F4)),
                                      child: Center(
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 17, fontWeight: FontWeight.w600),
                                          ))),
                                  Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 65,
                                      width: MediaQuery.of(context).size.width * .15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffF1F3F4)),
                                      child: Center(
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 17, fontWeight: FontWeight.w600),
                                          ))),
                                  Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 65,
                                      width: MediaQuery.of(context).size.width * .15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffF1F3F4)),
                                      child: Center(
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 17, fontWeight: FontWeight.w600),
                                          ))),
                                  Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 65,
                                      width: MediaQuery.of(context).size.width * .15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffF1F3F4)),
                                      child: Center(
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 17, fontWeight: FontWeight.w600),
                                          ))),
                                  Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 65,
                                      width: MediaQuery.of(context).size.width * .15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffF1F3F4)),
                                      child: Center(
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 17, fontWeight: FontWeight.w600),
                                          ))),
                                ],
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () { Navigator.pop(context);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 20, right: 20),
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Color(0xffBB0200)),
                                      child: Center(
                                          child: Text("Add Vehicle",
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
                            SizedBox(height: 15,),


                          ]),
                    );
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffBB0200)),
                child: Center(
                    child: Text("Add New Vehicle",
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
        height: 20,
      )
    ])));
  }
}
