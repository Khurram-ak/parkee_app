import 'package:flutter/material.dart';

class CustomerChat extends StatefulWidget {
  const CustomerChat({Key? key}) : super(key: key);

  @override
  State<CustomerChat> createState() => _CustomerChatState();
}

class _CustomerChatState extends State<CustomerChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      Container(
        height: 150,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: Color(0xffC6EBD0)),
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 33,
                )),
            const SizedBox(
              width: 8,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "#22 Issue 1,2,3",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "ManropeSemiBold"),
                  ),
                  const Text(
                    "Opened 23,12,22 Open",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: "ManropeSemiBold"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 17,
      ),
      SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 15, right: 15),
            constraints: BoxConstraints(
              maxHeight: double.infinity,
            ),
            decoration: BoxDecoration(
                color: Color(0xffFFE1D8),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  'Hello John, I’m Michale, Can you please elaborate your issue in detail so we can understand your problem properly',
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, top: 8),
              child: Text(
                "1 Feb 12:00AM",
                style: TextStyle(fontSize: 14, color: Colors.black38),
              )),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 15, right: 15),
            constraints: BoxConstraints(
              maxHeight: double.infinity,
            ),
            decoration: BoxDecoration(
                color: Color(0xff1C1919),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  'I have issues on payment. It’s not processing at all, can you please help me?',
                  softWrap: true,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 15, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "1 Feb 12:00AM",
                    style: TextStyle(fontSize: 14, color: Colors.black38),
                  ),
                ],
              )),
        ]),
      ),
      const Spacer(),
      Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE0E0E0)),
                  color: const Color(0xffF1F3F4),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: "Enter Message",
                      suffixIcon: Image.asset(
                        "lib/assests/images/file.png",
                        width: 15,
                      )),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Image.asset("lib/assests/images/sendBtn.png")
          ],
        ),
      )
    ])));
  }
}
