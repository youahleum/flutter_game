import 'package:flutter/material.dart';

class SelectButton extends StatefulWidget {
  const SelectButton({
    super.key,
    required this.pick,
    required this.selector,
    required this.onPressed,

  });

  final String pick;
  final bool selector;
  final VoidCallback onPressed;

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          side: const BorderSide(
            width: 1,
            color: Colors.black,
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: const EdgeInsets.all(10),
          minimumSize: const Size(24.0, 24.0),
        ),
        child: widget.pick!=''
            ? widget.pick=='one'
            ? const Icon(
          Icons.circle_outlined,
          size: 25,
          color: Colors.blue,
        )
            : const Icon(
          Icons.close,
          size: 25,
          color: Colors.red,
        )
            : const SizedBox(width: 25,height: 25,),),
    );
  }
}
