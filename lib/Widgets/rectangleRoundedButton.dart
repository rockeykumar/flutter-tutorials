import 'package:flutter/material.dart';

class RectangleRoundedButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final double? height;
  final VoidCallback? callback;
  final double borderRadiusValue;

  const RectangleRoundedButton({
    super.key,
    required this.buttonName,
    this.icon,
    this.callback,
    this.borderRadiusValue = 12,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ElevatedButton(
        onPressed: () {
          callback!();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusValue),
          ),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    buttonName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  icon!
                ],
              )
            : Text(
                buttonName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
