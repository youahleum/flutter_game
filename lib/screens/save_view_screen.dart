import 'package:flutter/material.dart';
import 'package:flutter_game/providers/saveGameLists.dart';
import 'package:provider/provider.dart';

class SaveViewScreen extends StatefulWidget {
  late List<String> selectList;
  SaveViewScreen({ required this.selectList});

  @override
  State<SaveViewScreen> createState() => _SaveViewScreenState();
}



class _SaveViewScreenState extends State<SaveViewScreen> {



  @override
  Widget build(BuildContext context) {
    print(widget.selectList);

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
            // if(widget.selectList.length>24){
            //   for(var a = 1; a < 4; a++)
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         for (var i = (a - 1) * 3; i < a * 3; i++)
            //           Container(
            //             child: widget.selectList[i] == 'one' ?
            //             Icon(
            //               Icons.circle_outlined,
            //               size: 25,
            //               color: Colors.blue,
            //             )
            //                 : Icon(
            //               Icons.close,
            //               size: 25,
            //               color: Colors.red,
            //             ),
            //             width: 30,
            //             height: 30,
            //             decoration: BoxDecoration(
            //                 border: Border.all(
            //                   color: Colors.black,
            //                   width: 1,
            //                 )
            //             ),
            //           )
            //       ],
            //     ),
            // }else if(widget.selectList.length>15){
            //   for(var a = 1; a < 4; a++)
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         for (var i = (a - 1) * 3; i < a * 3; i++)
            //           Container(
            //             child: widget.selectList[i] == 'one' ?
            //             Icon(
            //               Icons.circle_outlined,
            //               size: 25,
            //               color: Colors.blue,
            //             )
            //                 : Icon(
            //               Icons.close,
            //               size: 25,
            //               color: Colors.red,
            //             ),
            //             width: 30,
            //             height: 30,
            //             decoration: BoxDecoration(
            //                 border: Border.all(
            //                   color: Colors.black,
            //                   width: 1,
            //                 )
            //             ),
            //           )
            //       ],
            //     ),
            // }else
            //   {
            //     for(var a = 1; a < 4; a++)
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           for (var i = (a - 1) * 3; i < a * 3; i++)
            //             Container(
            //               child: widget.selectList[i] == 'one' ?
            //               Icon(
            //                 Icons.circle_outlined,
            //                 size: 25,
            //                 color: Colors.blue,
            //               )
            //                   : Icon(
            //                 Icons.close,
            //                 size: 25,
            //                 color: Colors.red,
            //               ),
            //               width: 30,
            //               height: 30,
            //               decoration: BoxDecoration(
            //                   border: Border.all(
            //                     color: Colors.black,
            //                     width: 1,
            //                   )
            //               ),
            //             )
            //         ],
            //       ),
            //   }
        ],
      ),
    );
  }
}
