import 'package:flutter/material.dart';
import 'package:flutter_game/widgets/select_button.dart';
import 'package:flutter_game/widgets/alert_two_button_dialog.dart';

class SizeFiveWidget extends StatefulWidget {
  const SizeFiveWidget({Key? key}) : super(key: key);

  @override
  State<SizeFiveWidget> createState() => _SizeFiveWidgetState();
}

class _SizeFiveWidgetState extends State<SizeFiveWidget> {
  bool _selector = true;
  List<String> picks = ['', '', '','','','','','','','','','','','','','','','','','','','','','',''];


// 무르기 하기 위해 마지막 위치 확인
  late int lastSelectNum;

  // 무른 횟수 확인
  List<int> returnCount = [0, 0];

  // 마지막 끝남 확인
  int countSelectNum=0;


  void alertConfirm(picks) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertTwoButtonDialog(
          alertTitle: '게임 종료',
          alertContent: '게임을 저장하시겠습니까?',
          alertWinner: _selector?'플레이어1' : '플레이어1',
          alertConfirm: '저장',
          alertAddList:picks,
          alertCancel: '게임 다시 시작',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        const Text('5 x 5',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('지금은 '),
            Text(
              _selector ? '플레이어 1' : '플레이어 2',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            Text('님의 차례 입니다'),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            for(var a=1 ; a<6; a++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(var i=(a-1)*5; i<a*5 ;i++)
                  SelectButton(onPressed:(){
                    setState(() {
                      if (picks[i] == '') {
                        _selector ? picks[i] = 'one' : picks[i] = 'two';
                        lastSelectNum= i;
                        _selector = !_selector;
                        countSelectNum+=1;
                      }
                      if(countSelectNum==25){
                        alertConfirm(picks);
                      }
                    });
                  },pick: picks[i], selector: _selector),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            //  무르기
            TextButton(
              onPressed: () {
                setState(() {
                  if(picks[lastSelectNum]!='' && countSelectNum !=picks.length){
                    if(!_selector && returnCount[0]<3 ){
                      returnCount[0]+=1;
                      countSelectNum-=1;
                      picks[lastSelectNum]='';
                      _selector = !_selector;
                    }else if(_selector && returnCount[1]<3 ){
                      returnCount[1]+=1;
                      countSelectNum-=1;
                      picks[lastSelectNum]='';
                      _selector = !_selector;
                    }
                  }
                });
              },
              style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Colors.red),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                '무르기',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('[플레이어 1]님의 무르기 남은 횟수는 '),
                Text(
                  '${3-returnCount[0]}회',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                Text(' 입니다'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('[플레이어 2]님의 무르기 남은 횟수는 '),
                Text(
                  '${3-returnCount[1]}회',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                Text(' 입니다'),
              ],
            ),
          ],
        )
      ],
    );
  }
}

