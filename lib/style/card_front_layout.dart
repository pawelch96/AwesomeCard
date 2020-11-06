import 'package:flutter/material.dart';

class CardFrontLayout {
  String cardNumber;
  String cardExpiry;
  String cardHolderName;
  Widget cardTypeIcon;
  double cardWidth;
  double cardHeight;
  Color textColor;

  CardFrontLayout(
      {this.cardNumber = "",
      this.cardExpiry = "",
      this.cardHolderName = "",
      this.cardTypeIcon,
      this.cardWidth = 0,
      this.cardHeight = 0,
      this.textColor});

  Widget layout1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: new Image.asset(
                    'images/contactless_icon.png',
                    fit: BoxFit.fitHeight,
                    width: 30.0,
                    height: 30.0,
                    color: textColor,
                    package: 'awesome_card',
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        cardNumber == null || cardNumber.isEmpty
                            ? 'XXXX  XXXX  XXXX  XXXX'
                            : cardNumber,
                        style: TextStyle(
                            package: 'awesome_card',
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Trenda',
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 0.8,
                      ),
                      Text(
                        '1234',
                        style: TextStyle(
                            package: 'awesome_card',
                            color: Colors.white.withOpacity(0.49),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Trenda',
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        cardHolderName == null || cardHolderName.isEmpty
                            ? "Card Holder"
                            : cardHolderName,
                        style: TextStyle(
                            package: 'awesome_card',
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Trenda',
                            fontSize: 18),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'VALID\nTHRU',
                            style: TextStyle(
                                package: 'awesome_card',
                                color: Colors.white.withOpacity(0.49),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Trenda',
                                fontSize: 8),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            cardExpiry == null || cardExpiry.isEmpty
                                ? "MM/YY"
                                : cardExpiry,
                            style: TextStyle(
                                package: 'awesome_card',
                                color: textColor,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Trenda',
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                        ],
                      ),
                    ],
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
