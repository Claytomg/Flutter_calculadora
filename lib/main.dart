import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = '';
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
        labelText: 'Número 01',
        labelStyle: TextStyle(color: Colors.deepOrange),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
      ),
      onChanged: (value) {
        number1 = double.parse(value);
      },
    );
    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
        labelText: 'Número 02',
        labelStyle: TextStyle(color: Colors.deepOrange),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
      ),
      onChanged: (value) {
        number2 = double.parse(value);
      },
    );
    TextButton botoes = TextButton(
      style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.deepOrange,
          disabledBackgroundColor: Color.fromARGB(255, 55, 61, 60),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0))),
      child: Text('Calcular'),
      onPressed: () {
        setState(() {
          double calc = number1 + number2;
          this.result = 'O resultado da soma é ${calc.toStringAsFixed(0)}';
        });
      },
    );

    Text result = Text(
      this.result,
      style: TextStyle(color: Colors.deepOrange),
    );

    Padding separador = Padding(padding: EdgeInsets.all(4.0));

    Column columns = Column(
      children: [
        separador,
        num1,
        separador,
        num2,
        separador,
        SizedBox(
          child: botoes,
          width: double.infinity,
        ),
        separador,
        result
      ],
    );

    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: columns,
        ),
      ),
    );
  }
}
