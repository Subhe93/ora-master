import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:async';

import 'package:ora_app/Models/ChangePasswordBody.dart';
import 'package:ora_app/Models/StringSuccessResponse.dart';
import 'package:ora_app/Models/userModel.dart';

const baseUrl = "http://ora.hashtagweb.online/api";
const newBaseUrl = "http://test-ora.hashtagweb.online/api";

class API {

   Future getCategories() {
    var url = baseUrl + "/getCategories";
    return http.get(url);
  }

  static Future getEvents() {
    var url = baseUrl + "/getEvents";
    return http.get(url);
  }

  static Future getAddress(String token) {
    var url = baseUrl + "/getMyAddresses";
    return http.get(url,headers: {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.ACCEPT: 'application/json',
    HttpHeaders.authorizationHeader: 'Bearer $token',
    }
    );
  }

  static Future getCources() async {
    var url = baseUrl + "/getCourses";
    return await http.get(url);
  }

   Future getSubCategories()  async {
    var url = baseUrl + "/getSubCategories";
    http.Response response = await http.get(url);
    return response;
  }

  static Future getProducts(String id)  async {
    var url = baseUrl + "/getProductsBySubCategoryId";
    http.Response response = await http.post(url,body: {
      "id":id,
    });
    return response;
  }


   Future changePassword(ChangePasswordBody changePasswordBody) {
    var url = baseUrl + "/changePassword";

    return http.post(url,body:{
      "user_id":changePasswordBody.user_id,
      "old_password":changePasswordBody.old_password,
      "new_password":changePasswordBody.new_password,
    });
  }

  Future login(String email, String password) async {
    try {
      final String apiUrl = newBaseUrl+'/login';
      final response =
      await http.post(apiUrl, body: {"email": email, "password": password});

      if (response.statusCode == 200) {
        final String responseString = response.body;

        return userModelFromJson(responseString);
      } else {
        print(response.statusCode);
        print('1');
        return null;
      }
    }catch(e){
      print('2');

      return null ;
    }
  }


  static Future search(String term)  async {
    var url = baseUrl + "/search";
    http.Response response = await http.post(url,body: {
      "name":term,
    });
    return response;
  }


  static Future forgotPassword(String email)  async {
    var url = baseUrl + "/forgetPassword";
    http.Response response = await http.post(url,body: {
      "email":email,
    });
    return response;
  }


  static Future resetPassword(String code , String email , String password)  async {
    var url = baseUrl + "/resetPassword";
    http.Response response = await http.post(url,body: {
      "code":code,
      "email":email,
      "new_password":password
    });
    return response;
  }

   Future getCountries() async{
     var url = newBaseUrl+"/getCountries";
     
     Response response = await http.get(url);

     return response;

  }

   Future getImplants() async{
     var url = newBaseUrl + "/implant/getCats";
     http.Response response = await http.get(url);
     return response;
   }

   Future getCities(String country) async {
     var url = newBaseUrl + "/getCities/" + country.trim();
     http.Response response = await http.get(url);

     return response;
   }

   Future getDiameters(int implantId) async{
     var url = newBaseUrl + "/implant/getDias/{$implantId}";
     http.Response response = await http.get(url);
     return response;
   }

}