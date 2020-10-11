import 'package:flutter/material.dart';
import 'package:ora_app/app_icons.dart';
import 'package:ora_app/events_and_educations.dart';
import 'package:ora_app/sign_in.dart';
import 'modules.dart';

class DrawerView extends StatefulWidget {
  @override
  _DrawerViewState createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  List<DrawerItems> drawerItems = [
    DrawerItems(
        icon: Icon(
          Icons.home,
          color: Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'Home'),
    DrawerItems(
        icon: Icon(
          Icons.local_offer,
          color: Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'MY ORDERS'),
    DrawerItems(
        icon: Icon(
          MyFlutterApp.tooth,
          color: Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'IMPLANTS'),
    DrawerItems(
        icon: Icon(
          MyFlutterApp.leg,
          color: Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'PROSTHETIC'),
    DrawerItems(
        icon: Icon(
          Icons.event,
          color: Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'EVENTS & EDUCATIONS'),
    DrawerItems(
        icon: Icon(
          Icons.system_update_alt,
          color:Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'ENDO SYSTEM'),
    DrawerItems(
        icon: Icon(
          Icons.category,
          color: Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'CATALOGUE'),
    DrawerItems(
        icon: Icon(
          Icons.contact_phone,
          color:Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'CONTACT US'),
    DrawerItems(
        icon: Icon(
          Icons.supervised_user_circle,
          color: Color.fromRGBO(13, 128, 131,1),
        ),
        name: 'Login | Register')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: MediaQuery.of(context).size.height,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20) , bottomRight: Radius.circular(20
        )),
        child: Drawer(
          elevation: 1,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
//              color: Theme.of(context).primaryColor,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(13, 128, 133,1),
                      Color.fromRGBO(13, 128, 133, 1),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.5, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).accentColor,
                        maxRadius: MediaQuery.of(context).size.height * 0.06,
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/logo.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Username',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                    padding: EdgeInsets.all(10.0),
                    children: drawerItems.map((DrawerItems value) {
                      return ListTile(
                        title: Text(value.name),
                        leading: value.icon,
                        onTap: () {
                          // switch(value.name){
                          //   case 'EVENTS & EDUCATIONS':
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => EventsAndEducations()
                          //       ),
                          //     );
                          // }
                           Navigator.pop(context);
                          print ('/' + value.name);
                          Navigator.pushNamed(context, '/' + value.name);
//                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                        },
                      );
//                    return GestureDetector(
//                      onTap: () {
//                        Navigator.pop(context);
//                        Navigator.pushNamed(context, '/'+value.name);
//
//                      },
//                      child: Container(
//                        child: Padding(
//                          padding: const EdgeInsets.all(20.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              value.icon,
//                              SizedBox(
//                                width: 20,
//                              ),
//                              Text(
//                                value.name,
//                                style: TextStyle(
//                                  fontSize: 16.0,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                    );
                    }).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
