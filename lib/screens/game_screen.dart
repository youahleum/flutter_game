import 'package:flutter/material.dart';

import 'package:flutter_game/widgets/size_five_widget.dart';
import 'package:flutter_game/widgets/size_four_widget.dart';
import 'package:flutter_game/widgets/size_three_widget.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String selectSize = '';
  bool selected = false;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter game',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              if(selectSize=='')
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                    height: 100,
                    padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                    child: Text(
                      '사이즈를 선택해주세요',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectSize='three';
                      });
                    },
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      '3 X 3',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectSize='four';
                      });
                    },
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),

                    child: const Text(
                      '4 X 4',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () { setState(() {
                      selectSize='five';
                    });},
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      '5 X 5',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  if(selectSize=='three')
                  const SizeThreeWidget(),
                  if(selectSize=='four')
                  const SizeFourWidget(),
                  if(selectSize=='five')
                  const SizeFiveWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

