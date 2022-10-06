import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
        body: Container(
            child: Column(children: [
      Container(
        color: Color(0xffFFF3F1),
        padding: EdgeInsets.only(left: 15, right: 15, top: 50),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              "Payment",
              style: TextStyle(fontSize: 22),
            )
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("Current Balance",
                      style:
                          TextStyle(fontSize: 18, fontFamily: "ManropeMed"))),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 61,
                width: MediaQuery.of(context).size.width * .50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("KES 350.00",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "ManropeSemiBold")),
                    Image.asset("lib/assests/images/redIcon.png"),
                  ],
                ),
              )
            ],
          )),
      SizedBox(
        height: 17,
      ),
      Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/mytransactions');
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffBB0200)),
                child: Center(
                    child: Text("My Transactions",
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
      SizedBox(
        height: 15,
      ),
      Divider(),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.only(left: 25),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Available Cards",
              style: TextStyle(fontSize: 20, fontFamily: "ManropeBold"),
            )),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        padding: EdgeInsets.only(left: 5, right: 20),
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
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
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isCheckedopt1,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedopt1 = value!;
                    });
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jonatha Naondi",
                        style: TextStyle(
                            fontSize: 18, fontFamily: "ManropeSemiBold")),
                    Text("VISA xxxx 2424",
                        style: TextStyle(
                            fontSize: 14, fontFamily: "ManropeSemiBold")),
                  ],
                )
              ],
            ),
            Icon(Icons.wallet)
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
              ),
              context: context, 
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    height: 600,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset("lib/assests/images/line.png"),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFF3F1)
                            ),
                            child:  Icon(Icons.wallet_outlined,color: Colors.red,size: 65,)
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 26, bottom: 5),
                            child: Text(
                              "Add new card",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "ManropeSemiBold"),
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
                                labelText: 'Card No',
                                labelStyle: TextStyle(color: Colors.black, fontSize: 17),
                              ),
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
                                        labelText: 'Expiry',
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
                                        labelText: 'Secure Code ',
                                        labelStyle:
                                        TextStyle(color: Colors.black, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Wrap(
                            // mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "We may charge a small amount to confirm your card details. ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "ManropeSemiBold"),
                                    ),Text(
                                      "This is immediately refunded.",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "ManropeSemiBold"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                                    margin: EdgeInsets.only(left: 20, right: 20),
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffBB0200)),
                                    child: Center(
                                        child: Text("Add Card",
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
                          const SizedBox(
                            height: 25,
                          ),
                        ]),
                  ),
                );
              });
        },
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          padding: EdgeInsets.only(left: 25, right: 20),
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffBB0200)),
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffFFEFEF)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Add Debit/Credit Card",
                style: TextStyle(fontSize: 18, fontFamily: "ManropeSemiBold"),
              ),
              Icon(Icons.wallet)
            ],
          ),
        ),
      ),


    ])));
  }
}
