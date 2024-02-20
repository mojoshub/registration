import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final IconData? icon;
  final bool isPassword;
  final bool hidetext;
  final String? hint;
  const customTextField({
    super.key,
    required this.userFieldController,
    this.icon,
    this.hidetext = false,
    this.isPassword = false,
    this.hint,
  });

  final TextEditingController userFieldController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorRadius: const Radius.elliptical(5, 0),
      controller: userFieldController,
      decoration: InputDecoration(
          hintText: hint,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: Icon(icon),
          suffixIcon: isPassword
              ? const Icon(Icons.visibility)
              : const SizedBox(height: 10, width: 10)),
      obscureText: hidetext,
    );
  }
}
