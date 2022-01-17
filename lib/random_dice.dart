import 'dart:math';

import 'package:flutter/material.dart';

class RandomDice extends StatefulWidget {
  @override
  State<RandomDice> createState() => _RandomDiceState();
}

class _RandomDiceState extends State<RandomDice> {
  int number1 = 1;
  int number2 = 2;
  int count1 = 0;
  int count2 = 0;
  var rand = Random();

  void getRandomvalue1() {
    setState(() {
      number1 = rand.nextInt(6);
      count1 = count1+number1+1;
    });
  }

  void getRandomvalue2() {
    setState(() {
      number2 = rand.nextInt(6);
      count2 = count2+number2+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Dice'),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'Assets/$number1.png',
                width: 150,
                height: 150,
              ),
              Image.asset(
                'Assets/$number2.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    getRandomvalue1();
                  },
                  child: Text('Player 1')),
              ElevatedButton(
                  onPressed: () {
                    getRandomvalue2();
                  },
                  child: Text('Player 2')),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                count1.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                count2.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
