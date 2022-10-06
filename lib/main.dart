import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkee_app/Attendant_screens/Attendant_splash.dart';
import 'package:parkee_app/Attendant_screens/Parking_list.dart';
import 'package:parkee_app/Attendant_screens/Sign_in.dart';
import 'package:parkee_app/screens/About.dart';
import 'package:parkee_app/screens/Checkout.dart';
import 'package:parkee_app/screens/Current_parkings.dart';
import 'package:parkee_app/screens/Customer_chat.dart';
import 'package:parkee_app/screens/Edit_user_details.dart';
import 'package:parkee_app/screens/My_transactions.dart';
import 'package:parkee_app/screens/My_vehicles.dart';
import 'package:parkee_app/screens/Parking_info.dart';
import 'package:parkee_app/screens/Payment.dart';
import 'package:parkee_app/screens/Payment_confirmation.dart';
import 'package:parkee_app/screens/Promotions.dart';
import 'package:parkee_app/screens/Qr_code.dart';
import 'package:parkee_app/screens/Parking_history.dart';
import 'package:parkee_app/screens/SignUp.dart';
import 'package:parkee_app/screens/Splash.dart';
import 'package:parkee_app/screens/Support.dart';
import 'package:parkee_app/screens/User_container.dart';
import 'package:parkee_app/screens/User_details.dart';
import 'package:parkee_app/screens/User_mobile_verification.dart';
import 'package:parkee_app/screens/Vehicle_details.dart';
import 'package:parkee_app/screens/Welcome_screen.dart';
import 'package:parkee_app/screens/parking_details.dart';

import 'Attendant_screens/Select_parking.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'E-commerce App',
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        onGenerateRoute: (RouteSettings settings) {
          Map<String, Widget> pages = {
            "/": Splash(),
            "/signup": SignUp(),
            "/welcomescreen": WelcomeScreen(),
            "/usermobileverification": UserMobileVerification(),
            "/userdetails": UserDetails(),
            "/usercontainer": UserContainer(),
            "/parkinginfo": ParkingInfo(),
            "/qrcode": QrCode(),
            "/currentparkings": CurrentParkings(),
          };

          var pageToShow = pages[settings.name] ?? AttendantSplash();
          if (settings.name == "/") {
            pageToShow = Splash();
          } else if (settings.name == "/parkinghistory") {
            pageToShow = ParkingHistory();
          } else if (settings.name == "/signup") {
            pageToShow = SignUp();
          } else if (settings.name == "/welcomescreen") {
            pageToShow = WelcomeScreen();
          } else if (settings.name == "/usermobileverification") {
            pageToShow = UserMobileVerification();
          } else if (settings.name == "/userdetails") {
            pageToShow = UserDetails();
          } else if (settings.name == "/usercontainer") {
            pageToShow = UserContainer();
          } else if (settings.name == "/parkinginfo") {
            pageToShow = ParkingInfo();
          } else if (settings.name == "/qrcode") {
            pageToShow = QrCode();
          } else if (settings.name == "/currentparkings") {
            pageToShow = CurrentParkings();
          }
          else if (settings.name == "/parkingdetails") {
            pageToShow = ParkingDetails();
          }
          else if (settings.name == "/checkout") {
            pageToShow = Checkout();
          }
          else if (settings.name == "/paymentconfirmation") {
            pageToShow = PaymentConfirmation();
          }
          else if (settings.name == "/edituserdetails") {
            pageToShow = EditUserDetails();
          }
          else if (settings.name == "/myvehicles") {
            pageToShow = MyVehicles();
          }
          else if (settings.name == "/vehicledetails") {
            pageToShow = VehicleDetails();
          }
          else if (settings.name == "/payment") {
            pageToShow = Payment();
          }
          else if (settings.name == "/promotions") {
            pageToShow = Promotions();
          }
          else if (settings.name == "/support") {
            pageToShow = Support();
          }
          else if (settings.name == "/customerchat") {
            pageToShow = CustomerChat();
          }
          else if (settings.name == "/about") {
            pageToShow = About();
          }
          else if (settings.name == "/mytransactions") {
            pageToShow = MyTransactions();
          }
          else if (settings.name == "/signin") {
            pageToShow = SignIn();
          } else if (settings.name == "/parkinglist") {
            pageToShow = ParkingList();
          } else if (settings.name == "/mytransactions") {
            pageToShow = MyTransactions();
          }

          return MaterialPageRoute<String>(
              builder: (childContext) => pageToShow, settings: settings);
        },
        // home: Practice()
        // Splash
        home: AttendantSplash());
  }
}


