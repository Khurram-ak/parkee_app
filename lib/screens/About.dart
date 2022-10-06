import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                    color: Color(0xffF6F6F6)),
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
                        "About",
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
                height: MediaQuery.of(context).size.height *.035,
              ),
              Image.asset("lib/assests/images/logo.png",width: MediaQuery.of(context).size.width * .6,),
              SizedBox(
                height: MediaQuery.of(context).size.height *.065,
              ),
              Container(
              margin: EdgeInsets.only(left: 25,right: 25),
                height: 180,
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                borderRadius: BorderRadius.circular(12)
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('lib/assests/images/rateApp.png'),
                              SizedBox(width: 8,),
                              Text("Rate App",style: TextStyle(fontSize: 20),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('lib/assests/images/website.png'),
                              SizedBox(width: 8,),
                              Text("Visit Website",style: TextStyle(fontSize: 20),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('lib/assests/images/license.png'),
                              SizedBox(width: 8,),
                              Text("Licences",style: TextStyle(fontSize: 20),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Product Of",
                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500 ,fontFamily: "PoppinsSemiBold"),
                    ),
                    Image.asset("lib/assests/images/logo2.png",width: 120,),
                  ],
                ),
              ),




            ])));
  }
}
