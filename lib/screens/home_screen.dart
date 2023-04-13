import 'package:flutter/material.dart';
import 'package:flutter_game/screens/game_screen.dart';
import 'package:flutter_game/screens/save_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GameScreen()));
              }, child: Text('게임 시작',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),)),
              SizedBox(
                width: 50,
              ),
              TextButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SaveListScreen()));
              }, child: Text('저장된 게임',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),),
            ],
          )
        ],
      ),
    );
  }
}
