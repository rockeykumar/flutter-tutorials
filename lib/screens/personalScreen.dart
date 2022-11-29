import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/Widgets/customeTextField.dart';
import 'package:flutter_app/Widgets/rectangleRoundedButton.dart';
import 'package:flutter_app/components/inputBox.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          "Personal Details",
          style: TextStyle(color: Colors.grey[850]),
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => Navigator.pop(context),
          color: Colors.grey[850],
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 20),
        //     child: IconButton(
        //       iconSize: 25,
        //       splashColor: Colors.transparent,
        //       highlightColor: Colors.transparent,
        //       hoverColor: Colors.transparent,
        //       icon: Icon(
        //         Icons.close,
        //         color: Colors.deepPurple[700],
        //       ),
        //       onPressed: (() => Navigator.pop(context)),
        //     ),
        //   )
        // ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Full Name",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " (As per PAN)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFieldCustome(
                          placeholder: "Full Name",
                        ),

                        // ---------------------------------------------------------------
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              "Date of Birth",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " (As per PAN)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () async {
                            DateTime? datePicker = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(DateTime.now().year,
                                  DateTime.now().month + 2, 0),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextField(
                                    enabled: false,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "19-01-1996",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // -----------------------------------------------------

                        SizedBox(
                          height: 30,
                        ),

                        Row(
                          children: [
                            Text(
                              "Enter PAN",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFieldCustome(
                          placeholder: "LHGYN3793G",
                        ),

                        // ------------------------------------------------------

                        SizedBox(
                          height: 30,
                        ),

                        Row(
                          children: [
                            Text(
                              "Pincode",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFieldCustome(
                          placeholder: "eg. 800001",
                        ),

                        // *******************************************************
                      ],
                    ),

                    // ################################################################

                    SizedBox(
                      height: 250,
                    ),
                    RectangleRoundedButton(
                      buttonName: "Next",
                      icon: const Icon(Icons.chevron_right),
                    )
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
