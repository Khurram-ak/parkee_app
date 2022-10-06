import 'package:flutter/material.dart';

class ParkingList extends StatelessWidget {
  const ParkingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15)

        ),
        child: FloatingActionButton(
          backgroundColor: Color(0xffFFB1B0),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),

          onPressed: () {
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
                          height: 25,
                        ),
                        Text("Accured Bill"),
                        const SizedBox(
                          height: 20,
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
                                      child: Text("Close Session",
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
          child: Text("Add User",style: TextStyle(fontSize: 21,fontFamily: "ManropeSemiBold",color: Colors.black),),
        ),
      ),
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Color(0xffFDDDDC),
              ),
              padding: EdgeInsets.only(left: 40, right: 10),
              height: MediaQuery.of(context).size.height * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset("lib/assests/images/profilePic.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jhon Murithi",style: TextStyle(fontSize: 22,fontFamily: "ManropeBold"),),
                                Text("jhonemurithi@gmail.com",style: TextStyle(fontSize: 18,fontFamily: "ManropeSemiBold"),),
                                Container(
                                  padding: EdgeInsets.only(left: 20,right: 20),
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Attanding Parking 1",style: TextStyle(fontFamily: "ManropeSemiBold"),),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *.035,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(width: 8,),
                              Text("Kilimani, Nirobi - KE",style: TextStyle(fontFamily: "ManropeSemiBold",fontSize: 17),),
                              Spacer(),
                              Container(
                                height: 45,
                                padding: EdgeInsets.only(left: 20,right: 20),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.red),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(child: Text("Change",style: TextStyle(color: Colors.red),),),
                              )

                            ],
                          ),

                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(top: 15,left:25,right: 25 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Currently Parked Vehicles",style: TextStyle(fontSize: 18,fontFamily: "ManropeBold")),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .025,
                  ),
                  ListTile(
                    leading: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffD8D8FF)),
                        child: Center(
                            child: Text("KBY"))),
                    title:Text("TITLE HERE"),
                    subtitle: Text("SUB Title" ),
                    trailing: Text("PKR 2500"),

                  ),
                  Divider(),
                  ListTile(
                    leading: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffD8D8FF)),
                        child: Center(
                            child: Text("KBY"))),
                    title:Text("TITLE HERE"),
                    subtitle: Text("SUB Title" ),
                    trailing: Text("PKR 2500"),

                  ),
                  Divider(),
                  ListTile(
                    leading: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffD8D8FF)),
                        child: Center(
                            child: Text("KBY"))),
                    title:Text("TITLE HERE"),
                    subtitle: Text("SUB Title" ),
                    trailing: Text("PKR 2500"),

                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
