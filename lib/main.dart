import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myNumber = 1;

  Color btnColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('images/girl.jpg')),
            Text(
              '$myNumber',
              style: const TextStyle(fontSize: 30),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (btnColor == Colors.grey) {
                      myNumber++;
                      btnColor = Colors.red;
                    } else {
                      myNumber--;
                      btnColor = Colors.grey;
                    }
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                  color: btnColor,
                ))
          ],
        ),
      ),
    );
  }
}
