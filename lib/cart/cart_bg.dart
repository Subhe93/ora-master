import 'package:flutter/material.dart';


import 'cart_item_detail.dart';
import 'cart_shipping_detail.dart';

class CartBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 10),
          height: 470,
          width: screenWidth.width * 1.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    spreadRadius: 1,
                    blurRadius: 8)
              ]
          ),
          child: ListView(

            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Row(

                  children: <Widget>[
                    Text('Items',style: TextStyle(fontSize: 20),),
                    Spacer(),

                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Divider(
                    thickness:2,
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: CartItemDetail(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Divider(
                    thickness:2,
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: CartItemDetail(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Divider(
                    thickness:2,
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: CartItemDetail(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Divider(
                    thickness:2,
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: CartItemDetail(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Divider(
                    thickness:2,
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: CartItemDetail(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Divider(
                    thickness:2,
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: CartItemDetail(),
              ),


            ],
          ),
        ),

      ],
    );
  }
}
