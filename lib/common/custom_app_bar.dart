import 'package:animal_planet/utils/strings.dart';
import 'package:animal_planet/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  final double opacity;

  const CustomAppbar({Key key, this.opacity=0.8}) : super(key: key);

  Widget build(BuildContext context) {
    
    return Opacity(
      opacity: opacity,
          child: Container(
        padding: const EdgeInsets.only(top: 48,left: 16,right: 16),
        child: Row(
            children:<Widget>[
              RichText(
                text:TextSpan(
                  children:[
                    TextSpan(
                      text: Strings.App_Name,
                      style: TextStyles.appNameTextStyle,
                    ),
                    TextSpan(
                      text:"\n",
                    ),
                    TextSpan(
                       text: Strings.TAG_LINE,
                      style: TextStyles.tagLineTextStyle,
                    ),
                  ]
                ) ,
              ),
              Spacer(),
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
          ]
          
        ),
      ),
    );
  }
}