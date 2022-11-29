import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/components/colorCodeConvertInHex.dart';
import 'package:flutter_app/screens/loginScreen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(ColorConversionToHex.hexColor('#E0E0E0')),
        // title: Text("Coin Change!"),
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.menu,
          color: Color(ColorConversionToHex.hexColor('#424242')),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            // child: IconButton(
            //   iconSize: 25,
            //   splashColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
            //   hoverColor: Colors.transparent,
            //   icon: Icon(
            //     Icons.close,
            //     color: Colors.deepPurple[700],
            //   ),
            //   onPressed: (() => Navigator.pop(context)),
            // ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                child: Text('Login / Signup'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(ColorConversionToHex.hexColor("#424242")),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: DoubleBack(
        background: Colors.white,
        textStyle: const TextStyle(fontSize: 14, color: Colors.black),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Personal Loan",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Get Upto ₹ 2 Lac for 36 months EMI",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(
                                    ColorConversionToHex.hexColor('#424242')),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  child: Text('Apply'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        ColorConversionToHex.hexColor(
                                            "#424242")),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/personalLoan.png",
                                  width: 80,
                                  height: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 2nd sub-Body Insurance

                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Health Insurance",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "COVID Hospitalisation Covered",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(
                                    ColorConversionToHex.hexColor('#424242')),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  child: Text('Buy Insurance'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        ColorConversionToHex.hexColor(
                                            "#424242")),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/insurance.png",
                                  width: 80,
                                  height: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 3rd Automobile Loan Body

                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Automobile Loan",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Get Upto ₹ 12 Lac for 60 months EMI",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(
                                    ColorConversionToHex.hexColor('#424242')),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  child: Text('Apply'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        ColorConversionToHex.hexColor(
                                            "#424242")),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/auto.png",
                                  width: 80,
                                  height: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 4th Home Loan

                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Home Loan",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Get Upto ₹ 30 Lac for 180 months EMI",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(
                                    ColorConversionToHex.hexColor('#424242')),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  child: Text('Apply'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        ColorConversionToHex.hexColor(
                                            "#424242")),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/homeLoan.png",
                                  width: 80,
                                  height: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
