import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top:50,bottom: 25),
              child: Text("Let's Finish Up",style: TextStyle(fontSize:27,fontWeight: FontWeight.w600,fontFamily: "ManropeSemiBold" ),),
            ),
            Container(
              child: Image.asset("lib/assests/images/profile.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            Container(
              margin: EdgeInsets.only(top:0,bottom: 5),
              child: Text("What's Your Name?",style: TextStyle(fontSize:22,fontWeight: FontWeight.w600,fontFamily: "ManropeSemiBold" ),),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .045,
            ),
            Container(
              margin: EdgeInsets.only(top:0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Flexible(child:  Container(
                     margin: EdgeInsets.only(right: 10,left: 25),
                     child: TextField(

                       decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.black, width: 1.5),

                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.black, width: 1.5),
                         ),
                         labelText: 'First Name',
                         labelStyle: TextStyle(

                             color:  Colors.black,
                             fontSize: 17
                         ),

                       ),
                     ),
                   ),),
                   SizedBox(width: 5,),
                   Flexible(child:  Container(
                     margin: EdgeInsets.only(right: 25,left: 10),
                     child: TextField(

                       decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.black, width: 1.5),

                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.black, width: 1.5),
                         ),
                         labelText: 'Last Name ',
                         labelStyle: TextStyle(

                             color:  Colors.black,
                             fontSize: 20
                         ),

                       ),
                     ),
                   ),),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            Container(
              margin: EdgeInsets.only(right: 25,left: 25,top: 0),
              child: TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1.5),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  ),
                  labelText: 'Email for receipts',
                  labelStyle: TextStyle(

                      color:  Colors.black,
                      fontSize: 17
                  ),

                ),
              ),
            ),

            Spacer(),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {Navigator.pushNamed(context, "/usercontainer");},
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffBB0200)),
                      child: Center(
                          child: Text("Finish Profile Setup ",
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
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}
