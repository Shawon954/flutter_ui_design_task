import 'package:flutter/material.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 600,
        decoration: BoxDecoration(
            color: Colors.yellow,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
        ),
        

    );
  }
}
