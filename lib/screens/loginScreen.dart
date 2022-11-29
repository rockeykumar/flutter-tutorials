import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/rectangleRoundedButton.dart';
import 'package:flutter_app/components/inputBox.dart';
import 'package:flutter_app/screens/otpScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  final double borderRadiusValue = 12;
  final double height_width_of_logo = 50;

  void goToOTPVarificationPage(BuildContext context) {
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
              onPressed: (() {
                Navigator.pop(context);
              }),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            // color: Colors.grey[300],
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

                  // Mobile Number Text
                  Text(
                    "Mobile Number",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[850],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Text Field
                  const InputBoxCustom(),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey[200],
                  //     border: Border.all(color: Colors.white),
                  //     borderRadius: BorderRadius.circular(borderRadiusValue),
                  //   ),
                  //   child: const Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 15),
                  //     child: TextField(
                  //       // obscureText: true,
                  //       decoration: InputDecoration(
                  //         border: InputBorder.none,
                  //         hintText: '+91 8102306237',
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // Received ? WhatsApp Notification
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 20,
                        child: Checkbox(
                          activeColor: Colors.deepPurple[700],
                          value: true,
                          onChanged: ((value) {
                            const Text("TODO: not implemented...!");
                          }),
                        ),
                      ),
                      const Text(" Received ? "),
                      const Text(
                        "WhatsApp Notification",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // Button - Get OTP
                  const SizedBox(height: 30),

                  RectangleRoundedButton(
                      buttonName: 'Get OTP',
                      icon: const Icon(Icons.chevron_right),
                      callback: (() => goToOTPVarificationPage(context))),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: SizedBox(
                  //         height: 50,
                  //         child: ElevatedButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 "Get OTP",
                  //                 style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                   color: Colors.white,
                  //                 ),
                  //               ),
                  //               Text(
                  //                 ">",
                  //                 style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                   color: Colors.white,
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: Colors.deepPurple[700],
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius:
                  //                   BorderRadius.circular(borderRadiusValue),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(12),
                  //     color: Colors.deepPurple[700],
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(20.0),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: const [
                  //         Text(
                  //           "Get OTP",
                  //           style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //         Text(
                  //           ">",
                  //           style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.white,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  // Note Condition
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "By continuing you agree to terms fo use & privacy policy",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  // custome input box
                  // const InputBoxCustom(),

                  // custome button

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: SizedBox(
                  //         height: 45,
                  //         child: ElevatedButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 "Get OTP",
                  //                 style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                   color: Colors.white,
                  //                 ),
                  //               ),
                  //               Text(
                  //                 ">",
                  //                 style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                   color: Colors.white,
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: Colors.deepPurple[700],
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius:
                  //                   BorderRadius.circular(borderRadiusValue),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  //
                  // RectangleRoundedButton(
                  //   buttonName: 'Get OTP',
                  //   icon: ">",
                  //   callback: () => print("callback function"),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
