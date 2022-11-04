import 'package:flutter/material.dart';
import'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق صورة'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNum = 5;
  int rightImageNum=2;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNum == rightImageNum ? "مبروك لقد ربحت " :
          "حاول مرة أخرى",
          style: TextStyle(fontSize: 40.0, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftImageNum = Random().nextInt(4)+1;
                        rightImageNum=Random().nextInt(4)+1;
                      });
                      ;
                    },
                    child: Image.asset('images/image-$leftImageNum.png')),
              ),
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightImageNum=Random().nextInt(4)+1;
                        leftImageNum = Random().nextInt(4)+1;
                      });
                    },
                    child: Image.asset('images/image-$rightImageNum.png')),
              ),
            ],
          ),
        )
      ],
    );
  }
}
