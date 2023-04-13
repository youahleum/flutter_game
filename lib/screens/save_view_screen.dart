import 'package:flutter/material.dart';
import 'package:flutter_game/providers/saveGameLists.dart';
import 'package:provider/provider.dart';

class SaveViewScreen extends StatefulWidget {
  late List<String> selectList;
  late int selectNum;

  SaveViewScreen({ required this.selectList, required this.selectNum});

  @override
  State<SaveViewScreen> createState() => _SaveViewScreenState();
}



class _SaveViewScreenState extends State<SaveViewScreen> {

  List<String> winnerList=[];

  @override
  Widget build(BuildContext context) {
    winnerList = Provider.of<SaveGameLists>(context).winnerList;

    print(winnerList);

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
            height: 15,
          ),
          Text('${widget.selectNum+1}번째 게임',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          if(widget.selectList.length==9)
          Column(
            children: [

              for(var a=1; a<4;a++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = (a - 1) * 3; i < a * 3; i++)
                      Container(
                        child:  widget.selectList[i]=='one' ?
                        Icon(
                          Icons.circle_outlined,
                          size: 35,
                          color: Colors.blue,
                        )
                            : Icon(
                          Icons.close,
                          size: 35,
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )
                        ),
                      ),
                  ],
                )

            ],
          ),

          if(widget.selectList.length==16)
            Column(
              children: [

                for(var a=1; a<5;a++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = (a - 1) * 4; i < a * 4; i++)
                        Container(
                          child:  widget.selectList[i]=='one' ?
                          Icon(
                            Icons.circle_outlined,
                            size: 35,
                            color: Colors.blue,
                          )
                              : Icon(
                            Icons.close,
                            size: 35,
                            color: Colors.red,
                          ),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )
                          ),
                        ),
                    ],
                  )
              ],
            ),

          if(widget.selectList.length==25)
            Column(
              children: [
                for(var a=1; a<6;a++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = (a - 1) * 5; i < a * 5; i++)
                        Container(
                          child:  widget.selectList[i]=='one' ?
                          Icon(
                            Icons.circle_outlined,
                            size: 35,
                            color: Colors.blue,
                          )
                              : Icon(
                            Icons.close,
                            size: 35,
                            color: Colors.red,
                          ),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )
                          ),
                        ),
                    ],
                  )

              ],
            ),
          SizedBox(
            height: 30,
          ),
          Text('${winnerList[widget.selectNum]}님이 이기셨습니다')

        ],
      ),
    );
  }
}
