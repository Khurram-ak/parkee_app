import 'package:flutter/material.dart';

class ParkingHistory extends StatefulWidget {
  const ParkingHistory({Key? key}) : super(key: key);

  @override
  State<ParkingHistory> createState() => _ParkingHistoryState();
}

class _ParkingHistoryState extends State<ParkingHistory> {
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
                        "Parking History",
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
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 600,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Image.asset("lib/assests/images/line.png"),
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  // width: MediaQuery.of(context).size.width * .75,
                                  height: 200,
                                  child: Center(
                                    child: SizedBox(
                                        child: Image.asset("lib/assests/images/historymap.png",fit: BoxFit.fitWidth,)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
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
                                          Text("Entry")
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
                                          Text("Exit")
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
                                          Text("Bill")
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
                                          Text("Status")
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
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(left: 20, right: 20),
                                          height: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Color(0xffBB0200)),
                                          child: Center(
                                              child: Text("OK",
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
                        );
                      },
                    );
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


            ])));
  }
}
