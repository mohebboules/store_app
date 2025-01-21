import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonText, required this.onTap});
  final String buttonText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        height: 60,
        width: double.infinity,
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )),
      ),
    );
  }
}
