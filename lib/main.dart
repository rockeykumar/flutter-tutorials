import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter_app/Widgets/rectangleRoundedButton.dart';
import 'package:flutter_app/screens/dashboard.dart';
import 'package:flutter_app/screens/loginScreen.dart';
import 'package:flutter_app/screens/otpScreen.dart';
import 'package:flutter_app/screens/splashScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.grey[300]),
      // home: MyHomePage(),
      // home: LoginScreen(),
      // home: OtpScreen(),
      home: const SplashScreen(),
      // home: const DashboardScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
        ),
        title: Text("Coin Change...!"),
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => {},
          color: Colors.deepPurple[700],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.close,
              color: Colors.deepPurple[700],
            ),
          ),
        ],
      ),
      body: DoubleBack(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/pngegg.png',
                  width: 50,
                  height: 50,
                  color: Colors.purple[700],
                ),
                const Text("Coin Change!"),
                ElevatedButton(
                  onPressed: () {
                    SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                        statusBarColor: Colors.green,
                        statusBarIconBrightness: Brightness.dark,
                      ),
                    );
                  },
                  child: Text("Change Status bar"),
                ),
                Container(
                  // width: 50,
                  // height: 70,
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Text("test"),
                  decoration: BoxDecoration(
                    // color: Colors.grey[200],
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // width: 50,
                  // height: 70,
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
