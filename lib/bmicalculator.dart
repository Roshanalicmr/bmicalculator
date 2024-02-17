import 'package:flutter/material.dart';

class Bmicalc extends StatefulWidget {
  const Bmicalc({Key? key}) : super(key: key);

  @override
  State<Bmicalc> createState() => _BmicalcState();
}

class _BmicalcState extends State<Bmicalc> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h_value = 0;
  double w_value = 0;
  double result = 0;
  void calculate() {
    h_value = double.parse(height.text)/100;
    w_value = double.parse(weight.text);
    result = w_value / (h_value * h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
              'BMI calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: TextField(
                controller: height,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'height in cm',
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: TextField(
              controller: weight,
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'weight in kg',
            )),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
               setState((){
              calculate();
              });
              },
              child: Text(
                  style: TextStyle(
                      backgroundColor: Colors.black87, color: Colors.white54),
                  'calculate')),
          Text(
              style: TextStyle(
                  backgroundColor: Colors.black87, color: Colors.white54),
              result.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
