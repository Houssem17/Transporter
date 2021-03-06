import 'package:flutter/material.dart';
import 'package:project_app/components/text_field_container.dart';
import 'package:project_app/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.blue,
         //
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
