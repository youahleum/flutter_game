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
        title: const Text(
          'Flutter game',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
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
              }, child: const Text('게임 시작',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),)),
              const SizedBox(
                width: 50,
              ),
              TextButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SaveListScreen()));
              }, child: const Text('저장된 게임',
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
