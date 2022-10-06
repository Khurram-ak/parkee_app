import 'package:flutter/material.dart';

class CurrentParkings extends StatelessWidget {
  const CurrentParkings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                children: [
                  Container(
                    color: Color(0xffFFF3F1),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        Icon(
                          Icons.notifications,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          color: Color(0xffFFF3F1)),
                      child: Center(
                          child: Text("Current Parkings And Bills",
                              style: TextStyle(fontSize: 22, fontFamily: "ManropeMed")))
                  ),
                  SizedBox(height: 17,),
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, "/parkingdetails");},
                    child: ListTile(
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
                ]
            )
        )
    );
  }
}


