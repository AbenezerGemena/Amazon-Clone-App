import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final RegExp validationRegExp;
  const CustomFormField({
    super.key,
    required this.title,
    required this.controller,
    required this.obscureText,
    required this.hintText, 
    required this.validationRegExp
  });
 
  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
        ),
        TextFormField(
          maxLines: 1,
          obscureText:widget.obscureText ,
          validator: (value) {
            if(value != null && widget.validationRegExp.hasMatch(value)){
              return null;
            }
            return " please correct ${widget.hintText}";
          },
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.grey,width: 1)
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
                width: 1
              )
            )
          ),

        )
      ],

    );
  }
}