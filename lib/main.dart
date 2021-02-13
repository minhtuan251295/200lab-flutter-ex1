import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Stack(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  flex: 15,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(color: Colors.lightBlue),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(color: Colors.black),
                      ),
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            Container(color: Colors.yellow),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 30,
                  child: Container(
                    color: Colors.pinkAccent,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Container(color: Colors.pinkAccent),
                )
              ],
            ),
            Container(
              child: Row(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(
                          flex: 14,
                        ),
                        Expanded(
                            flex: 5,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                color: Colors.black38,
                              ),
                            )),
                        Spacer(
                          flex: 7,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
