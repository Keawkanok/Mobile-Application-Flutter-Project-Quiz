import 'package:flutter/material.dart';

// appBar
Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 25),
      children: <TextSpan>[
        TextSpan(
            text: 'Quiz',
            style:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.black54)),
        TextSpan(
            // text: 'Maker',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
      ],
    ),
  );
}

// Button
Widget blueButten({BuildContext context, String label, buttonWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(30),
    ),
    alignment: Alignment.center,
    width: buttonWidth != null
        ? buttonWidth
        : MediaQuery.of(context).size.width - 48,
    child: Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  );
}