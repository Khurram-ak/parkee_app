import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
              Container(
                color: const Color(0xff1C1919),
                padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },

                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: Color(0xffFFFDFD),
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Support Tickets",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xffFFFDFD),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 200,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Color(0xff1C1919)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start, children: [
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      "Support tickets contains issues you have raised. "
                          "To raise new issue tap the button below.",
                      style: TextStyle(
                          fontFamily: "ManropeMed",
                          fontSize: 15,
                          color: Color(0xffFFFDFD)),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet<void>(
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(24),
                                      topLeft: Radius.circular(24),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SingleChildScrollView(
                                      child: SizedBox(
                                        height: 650,
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            // mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Image.asset(
                                                  "lib/assests/images/line.png"),
                                              const SizedBox(
                                                height: 25,
                                              ),
                                              Container(
                                                  width: 120,
                                                  height: 120,
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffFFF3F1)
                                                  ),
                                                  child: const Icon(
                                                    Icons.wallet_outlined,
                                                    color: Colors.red,
                                                    size: 65,)
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 20, bottom: 5),
                                                child: const Text(
                                                  "New Support Ticket",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: "ManropeSemiBold"),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 25,
                                                    left: 25,
                                                    top: 25),
                                                child: const TextField(
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                          color: Colors.black,
                                                          width: 1.5),
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                          color: Colors.black,
                                                          width: 1.5),
                                                    ),
                                                    hintText:"Issue Title",
                                                    labelText: 'Issue Title',
                                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                                    labelStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 17),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Flexible(
                                                      child: Container(
                                                        // height: MediaQuery.of(context).size.height * .20,
                                                        margin: const EdgeInsets.only(
                                                            right: 25,
                                                            left: 25),
                                                        child:  TextFormField(
                                                          maxLines: 4,

                                                          decoration: const InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1.5),
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1.5),
                                                            ),
                                                            labelText: 'Description ',
                                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                                            hintText: "Description Here",
                                                            labelStyle:
                                                            TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                  border:Border.all(color:Colors.black45)
                                                ),
                                                margin:EdgeInsets.only(left:25,right:25,top:12),
                                                height:45,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width:70,
                                                      margin: EdgeInsets.only(right: 8),
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                                                        color:Color(0xffFFE5E4),
                                                        ),
                                                        child: Center(child: Image.asset("lib/assests/images/file.png"))),
                                                    Text("Attach File"),
                                                  ],
                                                ),
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
                                                        margin: const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20),
                                                        height: 60,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .circular(15),
                                                            color: const Color(
                                                                0xffBB0200)),
                                                        child: const Center(
                                                            child: Text(
                                                                "Create Ticket",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily: "PoppinsMed",
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight
                                                                        .w700))),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              )


                                              // Wrap(
                                              //   // mainAxisAlignment: MainAxisAlignment.center,
                                              //   children: [
                                              //     Container(
                                              //       padding: const EdgeInsets.only(
                                              //           left: 20,
                                              //           right: 20,
                                              //           top: 15),
                                              //       child: Column(
                                              //         crossAxisAlignment: CrossAxisAlignment
                                              //             .center,
                                              //         children: [
                                              //           const Text(
                                              //             "We may charge a small amount to confirm your card details. ",
                                              //             style: TextStyle(
                                              //                 fontSize: 15,
                                              //                 fontWeight: FontWeight
                                              //                     .w600,
                                              //                 fontFamily: "ManropeSemiBold"),
                                              //           ), const Text(
                                              //             "This is immediately refunded.",
                                              //             style: TextStyle(
                                              //                 fontSize: 15,
                                              //                 fontWeight: FontWeight
                                              //                     .w600,
                                              //                 fontFamily: "ManropeSemiBold"),
                                              //           ),
                                              //         ],
                                              //       ),
                                              //     ),
                                              //   ],
                                              // ),
                                              // const Spacer(),
                                              // Row(
                                              //   children: [
                                              //     Expanded(
                                              //       child: GestureDetector(
                                              //         onTap: () {
                                              //           Navigator.pop(context);
                                              //         },
                                              //         child: Container(
                                              //           margin: const EdgeInsets.only(
                                              //               left: 20,
                                              //               right: 20),
                                              //           height: 60,
                                              //           decoration: BoxDecoration(
                                              //               borderRadius: BorderRadius
                                              //                   .circular(5),
                                              //               color: const Color(
                                              //                   0xffBB0200)),
                                              //           child: const Center(
                                              //               child: Text(
                                              //                   "Add Card",
                                              //                   style: TextStyle(
                                              //                       color: Colors
                                              //                           .white,
                                              //                       fontFamily: "PoppinsMed",
                                              //                       fontSize: 20,
                                              //                       fontWeight: FontWeight
                                              //                           .w700))),
                                              //         ),
                                              //       ),
                                              //     ),
                                              //   ],
                                              // ),

                                            ]),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 20, right: 20),
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffBB0200)),
                              child: const Center(
                                  child: Text("Add New Ticket ",
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
                    const SizedBox(
                      height: 35,
                    ),
                  ])),
              const SizedBox(height: 15,),

              GestureDetector(
                onTap: (){Navigator.pushNamed(context, "/customerchat");},
                child: Container(
                  margin: const EdgeInsets.only(left: 25, right: 25, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                height: 74,
                                width: 74,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Color(
                                    0xffFFE1D8)),
                                child: Center(
                                    child: Image.asset(
                                        "lib/assests/images/ticket.png"))),
                            const SizedBox(
                              width: 9,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Issue 1,2,3... #23"),
                                const Text("Opened 23 Feb, 11:35 AM"),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
              const Divider(),


              Container(
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              height: 74,
                              width: 74,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Color(
                                  0xffFFE1D8)),
                              child: Center(
                                  child: Image.asset(
                                      "lib/assests/images/ticket.png"))),
                          const SizedBox(
                            width: 9,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Issue 1,2,3... #23"),
                              const Text("Opened 23 Feb, 11:35 AM"),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),


                  ],
                ),
              ),
              const Divider()
            ])));
  }
}
