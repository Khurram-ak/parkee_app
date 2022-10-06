import 'package:flutter/material.dart';

class SelectParking extends StatefulWidget {
  const SelectParking({Key? key}) : super(key: key);

  @override
  State<SelectParking> createState() => _SelectParkingState();
}

class _SelectParkingState extends State<SelectParking> {
  bool isCheckedopt1 = false;


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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height *.40,
            color: Color(0xffFFF3F1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 200,
                    child: Image.asset("lib/assests/images/profilePic.png",fit: BoxFit.cover,)),
                SizedBox(height: 20,),
                Text("Welcome",style: TextStyle(fontSize: 20,fontFamily: "ManropeSemiBold"),),
                Text("James Doe",style: TextStyle(fontSize: 27,fontFamily: "ManropeBold"),),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,left:25,right: 25 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select parking you’re attanding today",style: TextStyle(fontSize: 15,fontFamily: "ManropeBold")),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .025,
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
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
                          Text("Parking 1")
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .025,
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
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
                          Text("Parking 2")
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .025,
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
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
                          Text("Parking 3")
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/parkinglist');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffBB0200)),
                      child: Center(
                          child: Text("Next",
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
      ),

    );
  }
}
