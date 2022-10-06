import 'package:flutter/material.dart';

class MyTransactions extends StatefulWidget {
  const MyTransactions({Key? key}) : super(key: key);

  @override
  State<MyTransactions> createState() => _MyTransactionsState();
}

class _MyTransactionsState extends State<MyTransactions> {
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
                        "My Transactions",
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
                      Text("KES 50.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
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
                    Text("KES 50.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
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
                    Text("KES 50.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
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
                    Text("KES 50.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              Divider(),


            ])));
  }
}
