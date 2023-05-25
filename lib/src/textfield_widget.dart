import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Icon icon;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.isPassword,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              style: const TextStyle(
                color: Colors.red,
              ),
              controller: controller,
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
