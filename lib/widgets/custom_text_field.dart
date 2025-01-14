import 'package:flutter/material.dart';

class CustomTextInputField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? errorText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final Icon? prefixIcon;
  final ValueChanged<String>? onChanged;

  const CustomTextInputField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.prefixIcon, required this.errorText, this.onChanged,
  });

  @override
  _CustomTextInputFieldState createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  bool _obscureText = true; // Controls whether the text is hidden or visible

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      obscureText: widget.isPassword && _obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        errorText: widget.errorText,
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : null,
      ),
    );
  }
}