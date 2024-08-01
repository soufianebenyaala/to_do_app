import 'package:flutter/material.dart';

class GlobalTextFormField extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final TextEditingController? controller;
  const GlobalTextFormField({
    super.key,
    required this.hintText,
    this.labelText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
      controller: controller,
    );
  }
}
