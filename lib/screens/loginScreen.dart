// ignore: file_names
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  final double height_width_of_logo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Image.asset(
                  'assets/images/pngegg.png',
                  width: height_width_of_logo,
                  height: height_width_of_logo,
                  color: Colors.deepPurple[700],
                ),
                const SizedBox(height: 10),

                // logo name
                const Text(
                  "Coin Change",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 140),

                // Mobile Number Text
                const Text(
                  "Mobile Number",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 30),

                // Text Field
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      // obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '+91 8102306237',
                      ),
                    ),
                  ),
                ),

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
                          Text("TODO: not implemented...!");
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

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple[700],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Get OTP",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          ">",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // Note Condition
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By continuing you agree to terms fo use & privacy policy",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
