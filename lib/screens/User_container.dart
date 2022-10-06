import 'package:flutter/material.dart';
import 'package:parkee_app/screens/Navigation_drawer.dart';

class UserContainer extends StatefulWidget {
  const UserContainer({Key? key}) : super(key: key);

  @override
  State<UserContainer> createState() => _UserContainerState();
}

class _UserContainerState extends State<UserContainer> {
  bool parkings = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: NavigationDrawer(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "lib/assests/images/map.png",
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 35, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Builder(builder: (context) {
                      return IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        color: Colors.black,
                      );
                    }),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        parkings = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            !parkings
                ? SingleChildScrollView(
                  child: Container(
                      height: MediaQuery.of(context).size.height *.88 ,
                      child: DraggableScrollableSheet(
                          initialChildSize: 0.25,
                          minChildSize: 0.25,
                          maxChildSize: 0.75,
                          builder: (context, scrollController) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(19.0),
                                    topLeft: Radius.circular(19.0)),
                                color: Colors.white,
                              ),
                              child: SingleChildScrollView(
                                  controller: scrollController,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height *.7,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:   MediaQuery.of(context).size.height * .03,
                                        ),
                                        Image.asset(
                                            "lib/assests/images/line.png"),
                                        SizedBox(
                                          height:   MediaQuery.of(context).size.height * .05,
                                        ),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 85,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xffFFEBE9)),
                                              child: Image.asset(
                                                  "lib/assests/images/bar.png"),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "New to our parkings? ",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14),
                                                  ),
                                                  Text(
                                                      "Pull up to see your code ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18)),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "New to our parking?",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                  "Show this code to parking attendent?",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18)),
                                              SizedBox(
                                                height:   MediaQuery.of(context).size.height * .03,
                                              ),

                                              Image.asset(
                                                  "lib/assests/images/qrcode.png"),
                                              SizedBox(
                                                height:   MediaQuery.of(context).size.height * .03,
                                              ),

                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      "/currentparkings");
                                                },
                                                child: Container(
                                                  height: 52,
                                                  width: 200,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      color: const Color(
                                                          0xffFFEBE9)),
                                                  child: Center(
                                                      child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                          "lib/assests/images/parkingcar.png"),
                                                      Text(
                                                        " NWRCUS 205",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                    ],
                                                  )),
                                                ),
                                              ),
                                              SizedBox(
                                                height:   MediaQuery.of(context).size.height * .03,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            );
                          }),
                    ),
                )
                : Container(
                    height: MediaQuery.of(context).size.height * 0.8865,
                    child: DraggableScrollableSheet(
                        initialChildSize: 0.6,
                        minChildSize: 0.6,
                        maxChildSize: 0.6,
                        builder: (context, scrollController) {
                          return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(19.0),
                                    topLeft: Radius.circular(19.0)),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 40, right: 20),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(19.0),
                                          topLeft: Radius.circular(19.0)),
                                      color: Color(0xff1C1919),
                                    ),
                                    height: 145,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "lib/assests/images/car.png"),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Nexgen Mall Parking",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: "ManropeBold"),
                                            ),
                                            Text(
                                              "A-24",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontFamily: "ManropeBold"),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20, right: 20, top: 25),
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    height: 120,
                                    width:
                                        MediaQuery.of(context).size.width * .90,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffEAEAEA)),
                                        color: Color(0xffFBFBFB),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Available Spaces",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: "ManropeMed"),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              height: 38,
                                              width: 128,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffE6EDFC),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Center(
                                                  child: Text(
                                                "3 Spaces",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily:
                                                        "ManropeSemiBold"),
                                              )),
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Parking Rate ",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: "ManropeMed"),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              height: 38,
                                              width: 128,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffFFEBE9),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Center(
                                                  child: Text(
                                                "KES 7.00/min",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily:
                                                        "ManropeSemiBold"),
                                              )),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20),
                                            height: 60,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xffBB0200)),
                                            child: Center(
                                                child: Text("Show Directions",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            "PoppinsMed",
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  )
                                ],
                              ));
                        }),
                  )
          ],
        ),
      ),
    );
  }

  void openDrawer(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }
}
