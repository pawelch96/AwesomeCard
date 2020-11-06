import 'package:flutter/material.dart';

class CardBackLayout {
  String cvv;
  double width;
  double height;
  Color color;

  CardBackLayout({this.cvv, this.width, this.height, this.color});

  Widget layout1() {
    if (height < 177) height = 177;
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 177, maxHeight: height),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 27,
          ),
          Container(
            color: Colors.black,
            height: 42,
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.white.withOpacity(0.38),
                  height: 50,
                ),
                flex: 3,
              ),
              SizedBox(
                width: 12.0,
              ),
              Container(
                height: 50,
                width: 72,
                color: Colors.white,
                child: Center(
                  child: Text(
                    cvv.toString(),
                    style: TextStyle(
                      package: 'awesome_card',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Trenda',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 24.0,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
