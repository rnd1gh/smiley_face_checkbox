import 'package:flutter/material.dart';
import 'package:smiley_face_checkbox/smiley_face_checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smiley Face CheckBox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SmileFaceCheckbox(
              height: 20.0,
              isActive: isActive,
              onPress: () {
                setState(() {
                  isActive = !isActive;
                });
              },
            ),
            const SizedBox(height: 20.0),
            SmileFaceCheckbox(
              height: 50.0,
              isActive: isActive,
              onPress: () {
                setState(() {
                  isActive = !isActive;
                });
              },
            ),
            const SizedBox(height: 20.0),
            SmileFaceCheckbox(
              height: 80.0,
              isActive: isActive,
              onPress: () {
                setState(() {
                  isActive = !isActive;
                });
              },
            ),
            const SizedBox(height: 20.0),
            SmileFaceCheckbox(
              isActive: isActive,
              onPress: () {
                setState(() {
                  isActive = !isActive;
                });
              },
            ),
          ],
        )),
      ),
    );
  }
}
