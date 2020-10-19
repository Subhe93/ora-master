//
//
//
// class DiameterScreen extends StatelessWidget {
//   final Product product;
//
//   const DiameterScreen({Key key, this.product}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       // each product have a color
//       backgroundColor: Theme.of(context).primaryColor,
//       appBar: buildAppBar(context),
//       body: Body(product: product),
//     );
//   }
//
//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: Theme.of(context).primaryColor,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset(
//           'assets/icons/back.svg',
//           color: Colors.white,
//         ),
//         onPressed: () => Navigator.pop(context),
//       ),
//       actions: <Widget>[
//         IconButton(
//           icon: SvgPicture.asset("assets/icons/search.svg"),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: SvgPicture.asset("assets/icons/cart.svg"),
//           onPressed: () {    Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => CartPage(
//
//               ),
//             ),
//           );},
//         ),
//         SizedBox(width: kDefaultPaddin / 2)
//       ],
//     );
//   }
// }
