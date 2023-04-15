import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Calculator',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Result = $result',
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter first number',
              ),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter last number',
              ),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                double a = double.parse(firstController.text);
                double b = double.parse(secondController.text);
                setState(() {
                  result = a + b;
                });
                // Action when button is pressed
              },
              child: Text('Add'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                double a = double.parse(firstController.text);
                double b = double.parse(secondController.text);
                setState(() {
                  result = a - b;
                });
                // Action when button is pressed
              },
              child: Text('Substract'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                double a = double.parse(firstController.text);
                double b = double.parse(secondController.text);
                setState(() {
                  result = a * b;
                });
                // Action when button is pressed
              },
              child: Text('Multiply'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                double a = double.parse(firstController.text);
                double b = double.parse(secondController.text);
                setState(() {
                  result = a / b;
                });
                // Action when button is pressed
              },
              child: Text('Divide'),
            ),
          ],
        ),
      ),
    );
  }
}