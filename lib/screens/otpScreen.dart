import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/Widgets/optInputTextField.dart';
import 'package:flutter_app/Widgets/rectangleRoundedButton.dart';
import 'package:flutter_app/components/inputBox.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  final double borderRadiusValue = 12;
  final double height_width_of_logo = 50;

  void goToLoginPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const OtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        // title: Text("Coin Change!"),
        elevation: 0,
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon: Icon(Icons.chevron_left),
        //   // onPressed: () => Navigator.pop(context),
        //   onPressed: () => {},
        //   color: Colors.deepPurple[700],
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              iconSize: 25,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              icon: Icon(
                Icons.close,
                color: Colors.deepPurple[700],
              ),
              onPressed: (() => Navigator.pop(context)),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // logo
                    Image.asset(
                      'assets/images/pngegg.png',
                      width: height_width_of_logo,
                      height: height_width_of_logo,
                      color: Colors.grey[850],
                    ),
                    const SizedBox(height: 10),

                    // logo name
                    Text(
                      "Coin Change",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[850],
                      ),
                    ),

                    const SizedBox(height: 100),

                    // Enter OTP
                    Text(
                      "Enter OTP",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[850],
                      ),
                    ),

                    // show User Mobile Number
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text("+91"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("8102306237"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 30),

                    // OTP Text Field
                    const OTPInputTextField(),

                    // Expired OTP Counter
                    const SizedBox(height: 20),
                    Text(
                      "02:59",
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Button - Get OTP
                    const SizedBox(height: 30),

                    RectangleRoundedButton(
                      buttonName: 'Verify',
                      icon: Icon(Icons.check_outlined),
                      callback: () => print("callback function"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
