// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class InputBoxCustom extends StatefulWidget {
  const InputBoxCustom({super.key});

  @override
  State<InputBoxCustom> createState() => _InputBoxCustomState();
}

class _InputBoxCustomState extends State<InputBoxCustom> {
  final double borderRadiusValue = 12;

  TextEditingController countryCode = TextEditingController();

  @override
  void initState() {
    countryCode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(borderRadiusValue),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 38,
              child: TextField(
                controller: countryCode,
                enabled: false,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "+91",
                ),
              ),
            ),
            const Text(
              "|",
              style: TextStyle(fontSize: 25, color: Colors.grey),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Number"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
