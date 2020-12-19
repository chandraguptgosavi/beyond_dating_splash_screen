import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beyond Dating',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f2227),
        body: Stack(
          children: [
            Positioned(
              top: -(MediaQuery.of(context).size.height * 0.04),
              right: -(MediaQuery.of(context).size.width * 0.07),
              width: (MediaQuery.of(context).size.width / 2) +
                  MediaQuery.of(context).size.width * 0.2,
              height: (MediaQuery.of(context).size.height / 2) -
                  MediaQuery.of(context).size.height * 0.1,
              child: Container(
                child: Image.asset(
                  'assets/beyond_logo_black.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.33,
                  child:
                      Image.asset('assets/beyond_logo.png', fit: BoxFit.fill),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Beyond',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Dating',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                Text(
                  'The Best Dating, Friendship and Interest matching',
                  style: TextStyle(color: Color(0xffd01380)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
