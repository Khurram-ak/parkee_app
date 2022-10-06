import 'package:flutter/material.dart';

class EditUserDetails extends StatelessWidget {
  const EditUserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffFFF7F6),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.arrow_back_outlined,size: 33,),
                SizedBox(
                  width: 8,
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 25),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        fontFamily: "ManropeSemiBold"),
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset("lib/assests/images/profile.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 26, bottom: 5),
              child: Text(
                "Profile Details",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: "ManropeSemiBold"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 10, left: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 1.5),
                          ),
                          labelText: 'First Name',
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 25, left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 1.5),
                          ),
                          labelText: 'Last Name ',
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25, left: 25, top: 25),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                  ),
                  labelText: 'Email for receipts',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/usercontainer");
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffBB0200)),
                      child: Center(
                          child: Text("Save Profile Changes ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "ManropeBold",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
