import 'package:flutter/material.dart';
import 'package:ora_app/Models/Product.dart';
import 'package:ora_app/Models/ProductsResponse.dart';
import 'package:ora_app/Utils/Constants.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(
            product.engName,
            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          ),


          SizedBox(height: 60),
          Row(
            children: <Widget>[
              Container(
                height: 50,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Price\n"),
                      TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 120),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Container(
                    width: 70,
                    height: 300,
                    child: Image.asset("assets/images/tetanium.png"),
                    // child:  Image(
                    //
                    //   height: 150,
                    //   fit: BoxFit.fill,
                    //   image: NetworkImage(
                    //
                    //       'http://ora.hashtagweb.online' +
                    //           product.imageUrl),
                    // ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
