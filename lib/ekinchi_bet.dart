import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  const EkinchiBet({this.kelgenSan});
  final String kelgenSan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Тапшырма 02')),
        body: Center(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffBDBDBD),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 147.0, vertical: 20.0),
                child: Text(
                  'Сан: $kelgenSan ',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ));
  }
}
