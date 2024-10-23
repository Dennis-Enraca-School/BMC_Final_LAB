import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      
      home: const Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hi There',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Text(
                "I'm Dennis  Your Flutter Dev",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                ),
              ),
              ElevatedButtonExample(),
              // ElevatedButton(
              // child:  Text('Know more about me'))
            ],
          ),
        ),
      )
    );
  }


    // decoration: BoxDecoration(
    //           image: DecorationImage(image: image)
    //         ),
}
class ElevatedButtonExample extends StatefulWidget{
  const ElevatedButtonExample({super.key});
  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}


class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Know more about me'),
          ),
        ],
      ),
    );
  }
}
