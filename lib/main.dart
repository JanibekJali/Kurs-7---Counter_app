import 'package:counter_app/ekinchi_bet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Tapshyrma());
}

class Tapshyrma extends StatelessWidget {
  const Tapshyrma({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BirinchiBet(),
    );
  }
}

class BirinchiBet extends StatefulWidget {
  const BirinchiBet({Key key}) : super(key: key);

  @override
  State<BirinchiBet> createState() => _BirinchiBetState();
}

class _BirinchiBetState extends State<BirinchiBet> {
  int number = 0;
  void koshuldu() {
    number++;
    setState(() {});
  }

  void azaiuu() {
    number--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Тапшырма 01')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //// Variant 1
          // Container(
          //   color: Colors.blueAccent,
          //   height: 25,
          //   width: 240,
          //   child: const Center(
          //     child: Text('data 1'),
          //   ),
          // ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => EkinchiBet(
                      kelgenSan: number.toString(),
                    )),
              ),
            ),
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
                  'Сан:  ${number.toString()}',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 55.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: azaiuu,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff005ea6),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8.0),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: koshuldu,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff005ea6),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
