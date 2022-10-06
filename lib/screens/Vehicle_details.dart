import 'package:flutter/material.dart';

class VehicleDetails extends StatefulWidget {
  const VehicleDetails({Key? key}) : super(key: key);

  @override
  State<VehicleDetails> createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Color(0xffFFF3F1)),
                    padding: EdgeInsets.only(top: 35,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                            onTap: (){Navigator.pop(context);},
                            child: Icon(Icons.arrow_back_outlined,size: 33,)),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "KBX 202 Y",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "ManropeSemiBold"),
                              ),
                              Text(
                                "Last Parked 22/Jan",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "ManropeSemiBold"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17,),
                  Container(
                    margin: EdgeInsets.only(left: 25,right: 25,bottom: 5),
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
                                      shape: BoxShape.circle,
                                      color: Color(0xffD8D8FF)),
                                  child: Center(
                                      child: Image.asset("lib/assests/images/parkingcar.png"))),
                              SizedBox(
                                width: 9,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("KBY 202 Y"),
                                  Text("Start Jan 12"),
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
                    margin: EdgeInsets.only(left: 25,right: 25,bottom: 5),
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
                                      shape: BoxShape.circle,
                                      color: Color(0xffD8D8FF)),
                                  child: Center(
                                      child: Image.asset("lib/assests/images/parkingcar.png"))),
                              SizedBox(
                                width: 9,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("KEY 202 Y"),
                                  Text("Start 12 Jan 11.30 Am"),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Divider(thickness: 1,),
                  Container(
                    margin: EdgeInsets.only(left: 25,right: 25,bottom: 5),
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
                                      shape: BoxShape.circle,
                                      color: Color(0xffD8D8FF)),
                                  child: Center(
                                      child: Image.asset("lib/assests/images/parkingcar.png"))),
                              SizedBox(
                                width: 9,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("KEY 202 Y"),
                                  Text("Start 12 Jan 11.30 Am"),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Divider(thickness: 1,)
                ]
            )
        )
    );
  }
}
