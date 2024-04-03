import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(CoinFlipApp());
}

class CoinFlipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin Flip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoinFlipScreen(),
    );
  }
}

class CoinFlipScreen extends StatefulWidget {
  @override
  _CoinFlipScreenState createState() => _CoinFlipScreenState();
}

class _CoinFlipScreenState extends State<CoinFlipScreen> {
  String coinFace = '';

  void flipCoin() {
    setState(() {
      Random random = Random();
      int randomNumber = random.nextInt(2);
      coinFace = randomNumber == 0 ? 'Орёл' : 'Решка';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin Flip'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Выпало:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              coinFace,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: flipCoin,
              child: Text('Подбросить монетку'),
            ),
          ],
        ),
      ),
    );
  }
}
