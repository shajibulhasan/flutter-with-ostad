import 'package:flutter/material.dart';
class ElevatedButtonWidget extends StatelessWidget {
  String text;
  Color? color;
  final VoidCallback onClick;
  ElevatedButtonWidget({
    super.key,
    required this.text,
    required this.onClick,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),

          onPressed: onClick,
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}