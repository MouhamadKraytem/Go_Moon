// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  List<String> values;
  double width;
  CustomDropDownButton({
    super.key,
    required this.values,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 100 * 0.05),
      decoration: BoxDecoration(
          color: Color.fromARGB(53, 53, 53, 1),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        value: values.first,
        items: values.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
        onChanged: (_) {},
        underline: Container(),
        dropdownColor: Colors.grey,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
    ;
  }
}
