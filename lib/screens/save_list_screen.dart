import 'package:flutter/material.dart';
import 'package:flutter_game/screens/save_view_screen.dart';
import 'package:flutter_game/providers/saveGameLists.dart';
import 'package:provider/provider.dart';

class SaveListScreen extends StatefulWidget {
  const SaveListScreen({Key? key}) : super(key: key);

  @override
  State<SaveListScreen> createState() => _SaveListScreenState();
}

class _SaveListScreenState extends State<SaveListScreen> {

  List<List<String>> saveGameList=[];
  late List<String> selectList;
  late int selectNum;

  @override
  Widget build(BuildContext context) {
    saveGameList = Provider.of<SaveGameLists>(context).saveGameList;
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '저장된 게임'
        ),

      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 10,
                ),
                const Text('저장된 게임 리스트',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),),


                for(var i=0 ;i<saveGameList.length; i++ )
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SaveViewScreen(selectList:saveGameList[i], selectNum:i)));
                  },
                  style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),

                  ),
                  child: Text(
                    '${i+1}번째 게임',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                if(saveGameList.length==0)
                  Text('저장된 게임이 없습니다')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
