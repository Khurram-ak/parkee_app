import 'package:flutter/material.dart';

class UserMobileVerification extends StatelessWidget {
  const UserMobileVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            Container(
                child: Image.asset("lib/assests/images/msg.png")),
            Container(
              child: Column(
                children: [
                  Text(
                    "Enter OTP sent to",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .025,

                  ),
                  Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color(0xffF1F3F4)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "+921-552-336-54",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.red,
                        )
                      ],
                    )),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 65,
                      width: MediaQuery.of(context).size.width * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF1F3F4)),
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 65,
                        width: MediaQuery.of(context).size.width * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF1F3F4)),
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 65,
                        width: MediaQuery.of(context).size.width * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF1F3F4)),
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 65,
                        width: MediaQuery.of(context).size.width * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF1F3F4)),
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 65,
                        width: MediaQuery.of(context).size.width * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF1F3F4)),
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("Didn’t receive the OTP?",style: TextStyle(fontSize: 16,color:Colors.black45),),
                  Text("Resend OTP",style: TextStyle(fontSize: 16,color:Colors.red,fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {      Navigator.pushNamed(context, '/userdetails');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
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
          ],
        ),
      ),
    );
  }
}
