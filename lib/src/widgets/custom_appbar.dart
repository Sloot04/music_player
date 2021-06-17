import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Icon(FontAwesomeIcons.chevronLeft),
            Spacer(),
            Icon(FontAwesomeIcons.commentAlt),
            SizedBox(width: 20.0,),
            Icon(FontAwesomeIcons.headphonesAlt),
            SizedBox(width: 20.0,),
            Icon(FontAwesomeIcons.externalLinkAlt),
          ],
        ),
      ),
    );
  }
}
