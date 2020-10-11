
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget MainWidget(String title , String image , BuildContext context){
  print('testing :' +title+image);
  return Container(
    height: 200,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child:  Stack(
              children: [
                Center(
                  child:FadeInImage.assetNetwork(
                    placeholder: 'assets/loading.gif',
                    image: ('http://ora.hashtagweb.online'+image),
                  )
                ),
                //
              ],
            ),
          ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration (
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(13, 128, 133,0.4),
                  Color.fromRGBO(13, 128, 133,0.4),
//                                  Color.fromRGBO(39, 92, 93, 0.4),
//                                  Color.fromRGBO(126, 184, 186, 0.4),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          Center(
            child: Text (
              title,
              style: TextStyle (
                color: Theme.of(context).accentColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,

                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3, 3),
                    blurRadius: 2.0,
                    color: Colors.black,
                  ),
                ],
              ),),
          )
        ],
      ),
    ),
  );
}
