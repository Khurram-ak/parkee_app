import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  Promotions({Key? key}) : super(key: key);

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Container(
            child: Column(children: [
              Container(
                color: Color(0xffFFF3F1),
                padding: EdgeInsets.only(left: 15, right: 15, top: 50),
                child: Row(
                  children: [
                    GestureDetector(
                     onTap:(){Navigator.pop(context);},
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Promotions",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Color(0xffFFF3F1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 25, left: 25, top: 25),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(

                                decoration: InputDecoration(
                                  suffixIcon: Container(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("APPLY",style: TextStyle(fontSize: 15,fontFamily: "ManropeBold", color: Color(0xffBB0200)),),
                                      ],
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                    const BorderSide(color: Colors.black, width: 1.5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    const BorderSide(color: Colors.black, width: 1.5),
                                  ),
                                  labelText: 'Promo Code',
                                  labelStyle: TextStyle(color: Colors.black, fontSize: 17),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(

                        padding: EdgeInsets.only(left: 12,right: 12),
                        height: 45,
                        width: MediaQuery.of(context).size.width *.90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF9E3E0)
                        ),
                        child: Row(
                          children: [
                            Image.asset("lib/assests/images/redIcon.png"),
                            SizedBox(width: 8,),
                            Text("The promo will be applied to your next trip")
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 17,
              ),
              Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No code ?",style: TextStyle(fontSize: 16,fontFamily: "ManropeSemiBold",),),
                      Text(" Get free parking",style: TextStyle(fontSize: 16,fontFamily: "ManropeSemiBold",color: Color(0xffBB0200)),),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFF3F1)
                      ),
                      child:  Icon(Icons.wallet_outlined,color: Color(0xffBB0200),size: 65,)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(" Your Promotions will appear here",style: TextStyle(fontSize: 16,fontFamily: "ManropeSemiBold",color: Colors.black54))
                ],
              ))

            ]
            )
        )
    );
  }
}
