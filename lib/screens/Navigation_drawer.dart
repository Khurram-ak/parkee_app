import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                ),
                color: Color(0xffFDDDDC),
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset("lib/assests/images/dpThum.png"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .03,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Jhon Murithi"),
                            Text("jhonemurithi@gmail.com"),
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/edituserdetails");
                    },
                    child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Color(0xffBB0200), shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 17,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/myvehicles");
              },
              child: ListTile(
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("lib/assests/images/myVehicles.png"),
                  ],
                ),
                title: Container(child: Text("My Vehicles")),
              ),
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/parkinghistory");
              },
              child: ListTile(
                leading: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/assests/images/parkingHistory.png"),
                    ],
                  ),
                ),
                title: Container(child: Text("Parking History")),
              ),
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: (){Navigator.pushNamed(context, "/payment");},
              child: ListTile(
                leading: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/assests/images/payments.png"),
                    ],
                  ),
                ),
                title: Container(child: Text("Payment")),
              ),
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: (){Navigator.pushNamed(context, "/promotions");},
              child: ListTile(
                leading: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/assests/images/promotions.png"),
                    ],
                  ),
                ),
                title: Container(child: Text("Promotions")),
              ),
            ),
            Divider(),
            Spacer(),
            GestureDetector(
              onTap: (){Navigator.pushNamed(context, "/support");},

              child: ListTile(
                leading: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/assests/images/support.png"),
                    ],
                  ),
                ),
                title: Container(child: Text("Support")),
              ),
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: (){Navigator.pushNamed(context, "/about");},
              child: ListTile(
                leading: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/assests/images/about.png"),
                    ],
                  ),
                ),
                title: Container(child: Text("About")),
              ),
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("lib/assests/images/logout.png"),
                  ],
                ),
              ),
              title: Container(child: Text("Log Out")),
            ),
            SizedBox(
              height: 3,
            ),
          ],
        ));
  }
}
