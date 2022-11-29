import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldCustome extends StatelessWidget {
  String placeholder = "";
  TextFieldCustome({
    super.key,
    required this.placeholder,
  });

  final double borderRadiusValue = 12;

  TextEditingController countryCode = TextEditingController();

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
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: placeholder,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
