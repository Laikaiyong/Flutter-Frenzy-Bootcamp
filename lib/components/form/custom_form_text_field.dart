import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final IconData? inputIcon;

  const CustomFormTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      required this.obscureText,
      this.inputIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              icon: (inputIcon != null) ? Icon(inputIcon) : null,
              hintText: hintText,
              labelText: labelText,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[500])),
          validator: (String? value) {
            return (value!.isEmpty) ? 'Enter value' : null;
          },
        ));
  }
}
