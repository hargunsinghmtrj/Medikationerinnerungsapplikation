import 'package:flutter/material.dart';
import 'package:in_app_notification/in_app_notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InAppNotification(child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('click to remind'),
          onPressed: () => InAppNotification.show(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Text('MEDIKATIONSEINNAHMEZEIT ',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],))
                    ],
                  )
                ),
              ), context: context),
        ),
      ),
    ));
  }
}
