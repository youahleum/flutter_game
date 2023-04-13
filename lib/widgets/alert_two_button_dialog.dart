import 'package:flutter/material.dart';
import 'package:flutter_game/providers/saveGameLists.dart';
import 'package:flutter_game/screens/game_screen.dart';
import 'package:provider/provider.dart';

class AlertTwoButtonDialog extends StatefulWidget {
  AlertTwoButtonDialog({
    super.key,
    this.alertTitle,
    this.alertContent,
    this.alertWinner,
    required this.alertConfirm,
    required this.alertCancel,
  });

  String? alertTitle;
  String? alertContent;
  String? alertWinner;
  String alertConfirm;
  String alertCancel;

  @override
  State<AlertTwoButtonDialog> createState() => _AlertTwoButtonDialogState();
}

class _AlertTwoButtonDialogState extends State<AlertTwoButtonDialog> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: AlertDialog(
        insetPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 0.0,
        actionsAlignment: MainAxisAlignment.center,
        contentPadding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        titlePadding: const EdgeInsets.only(top: 18.0),
        actionsPadding: const EdgeInsets.fromLTRB(18.0, 0, 18.0, 21.0),
        title: Text(
          widget.alertTitle!,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        content: Flexible(
          fit: FlexFit.loose,
          child: Container(
            width: 315.0,
            height: 200,
            child: Column(
              children: [
                Text(
                  '축하합니다!',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     '승자는 ',
                     style: TextStyle(
                       fontSize: 14.0,
                       fontWeight: FontWeight.w500,
                       color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Text(widget.alertWinner!,
                     style: TextStyle(
                       fontSize: 18.0,
                       fontWeight: FontWeight.w600,
                       color: Colors.indigo,
                     ),
                     textAlign: TextAlign.center,),
                   Text(
                     '님 입니다',
                     style: TextStyle(
                       fontSize: 14.0,
                       fontWeight: FontWeight.w500,
                       color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ],
                ),
                Text(
                  widget.alertContent!,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<SaveGameLists>().add([]);
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        widget.alertConfirm,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GameScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        widget.alertCancel,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
