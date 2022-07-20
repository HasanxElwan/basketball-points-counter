import 'dart:html';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.onPressed}) : super(key: key);
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        minimumSize: const Size(160, 50),
      ),
      child: const Text('Add 2 Points'),
    );
  }
}
