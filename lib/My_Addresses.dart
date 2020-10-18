import 'dart:convert';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:ora_app/Models/AddressResponseModel.dart';
import 'file:///E:/hashtag%20progects/ora-master/lib/address/add_address.dart';
import 'package:ora_app/app_bar.dart';
import 'package:ora_app/modules.dart';

import 'Network/API.dart';
import 'Util/session_manager.dart';
import 'cards/address_card.dart';
import 'cards/cart_card.dart';
import 'cart.dart';
import 'package:http/http.dart' as http;

// List<AddressResponseModel> addressesList=[];

class MyAddresses extends StatefulWidget {
  @override
  _MyAddressesState createState() => _MyAddressesState();
}
SessionManager sessionManager = SessionManager();




class _MyAddressesState extends State<MyAddresses> {

  var addressList = new List<AddressResponseModel>();



  Future<List<AddressResponseModel>> getAddress() async{

    Future<String> authToken = sessionManager.getAuthToken();
    authToken.then((data) {
      print("authToken " + data.toString());
    },onError: (e) {
      print(e);
    });

    String token = await authToken;
    final String apiUrl = 'http://ora.hashtagweb.online/api/getMyAddresses';

    final response = await http.get(apiUrl, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.ACCEPT: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    } );


    if(response.statusCode==200){
      final String responseString = response.body;
      debugPrint('responsetest: ${responseString}');
      this.setState(() {
        addressList.addAll(addressResponseModelFromJson(responseString));
      });

      debugPrint('addressListTest: ${addressList[0].city}');
      return addressResponseModelFromJson(responseString);

    }else{
      debugPrint('responsetest: ${response.statusCode.toString()}');
      return null;
    }

  }

  deleteItem (int index){
    setState(() {
      addressList.removeAt(index);
    });
  }


  _getAddress() async{

    Future<String> authToken = sessionManager.getAuthToken();
    authToken.then((data) {
      print("authToken " + data.toString());
    },onError: (e) {
      print(e);
    });

    String token = await authToken;



    API.getAddress(token).then((response) {

      print(response);
      debugPrint('responsetest: ${response}');
      final String responseString = response.body;
      setState(() {
        addressList.addAll(addressResponseModelFromJson(responseString));

       // Iterable list = json.decode(response.body);
        //addressList = list.map((model) => AddressResponseModel.fromJson(model)).toList();
        debugPrint('responsetest: ${addressList[0].city}');
      });
    });
    //print(categories[0].engName);
  }

  @override
  Future<void> initState()  {
    //addressesList.clear();
    _getAddress();


  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topBar(context, barWithBack(context), Text ('Addresses'),barWithAdd(context)),

      body: SafeArea(
        top: false,
        bottom: false,
        child: ListView.builder (
          itemCount: addressList == null ? 0 : addressList.length,
          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: AddressCard( item: addressList[index], detectListItem: () => deleteItem(index),
              ),
            );
          },
        ),

      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Address',
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: () => {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Address()))
        },
      ),
    );
  }
}


