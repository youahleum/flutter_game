import 'package:flutter/material.dart';
import 'package:flutter_game/screens/save_view_screen.dart';

class SaveListScreen extends StatefulWidget {
  const SaveListScreen({Key? key}) : super(key: key);

  @override
  State<SaveListScreen> createState() => _SaveListScreenState();
}

class _SaveListScreenState extends State<SaveListScreen> {

  List<List<String>> saveGameList = [
    ['two', 'one', 'two', 'one', 'two', 'one', 'two', 'one', 'two'],
    ['two', 'one', 'two', 'one', 'two', 'one', 'two', 'one', 'two'],
    ['two', 'one', 'two', 'one', 'two', 'one', 'two', 'one', 'two'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '저장된 게임',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),

      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
          ),
          Text('저장된 게임 리스트'),


          for(var i=0 ;i<saveGameList.length; i++ )
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SaveViewScreen()));
            },
            style: TextButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

            ),
            child: Text(
              '${i+1}번째 게임',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
