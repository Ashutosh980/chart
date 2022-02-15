import 'package:flutter/material.dart';

class Component671 extends StatelessWidget {
  Component671({
    Key ?key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.948, -0.974),
              end: Alignment(0.912, 0.948),
              colors: [const Color(0xffffc073), const Color(0xfff7951d)],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(11.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        Center(
          child: SizedBox(
            width: 84.0,
            height: 24.0,
            child: Text(
              'Copy Link',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 18,
                color: const Color(0xffe6e6e6),
                fontWeight: FontWeight.w600,
              ),
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
