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

  Color borderColor = Colors.white;

  TextEditingController countryCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            child: TextField(
              maxLines: 1,
              minLines: 1,
              // keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: placeholder,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(8),
                //   borderSide: BorderSide(color: Colors.green),
                // ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
