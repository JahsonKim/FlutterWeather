import 'dart:convert';

import 'package:flutter/material.dart';

import 'api/ApiInterfaces.dart';

class CityDetails extends StatefulWidget {
  CityDetails(this.city,{Key key, this.title}) : super(key: key);

  final String title;
  final dynamic city;

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<CityDetails> {


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }



  @override
  Widget build(BuildContext context) {


    Widget cityWidget() {
      return Card(
        color: Color(0xff36618d),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Container(
          // width: 170,
          // height: 150,
          // height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
            // color: Colors.deepOrange,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  widget.city['name'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
      widget.city['country'],
                  style: TextStyle(
                    color: Color(0xffc4dbf3),
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),

              ],
            )),
      );
    }


    return Scaffold(
      appBar: AppBar(
        // backgroundColor:  Color(0xff0c1b2a),
        title: Text(widget.city['name']),
        elevation: 0,
      ),

      backgroundColor: Color(0xff0c1b2a),
      body: cityWidget(),

    );
  }
}
