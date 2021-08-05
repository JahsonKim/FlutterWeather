import 'package:flutter/material.dart';

import 'moredetails.dart';

class MyCity extends StatefulWidget {
  const MyCity({Key key}) : super(key: key);

  @override
  _MyCityState createState() => _MyCityState();
}

class _MyCityState extends State<MyCity> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        backgroundColor: Color(0xff0c1b2a),
      // appBar: new AppBar(
      //   title: new Text("Second Screen"),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[

                  Icon(Icons.my_location, size: 32,color: Colors.blueAccent,),
                  SizedBox(width: 8,),
                  Text("Your Location Now",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),),
                ]),
            SizedBox(height: 10,),
            Text("SanFransisco,California ,USA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
            SizedBox(height: 16,),
            Icon(Icons.nightlight_round,size: 200,color: Color(0xffD4A0D6),),
            SizedBox(height: 16,),
            Text("Moonlight",style: TextStyle( color: Colors.white,backgroundColor: Color(0xff6152C8),),),
            SizedBox(height: 16,),
            Text(" 20 C",style: TextStyle( color: Colors.white, fontSize: 45) ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(
                    Icons.fast_rewind_outlined ,color: Color(0xff709bc4),
                    size: 25,
                  ),
                    SizedBox(width: 8,) ,
                    Text(
                      "5km/hr",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(
                    Icons.pin_drop_rounded,color: Color(0xff5390d0),
                    size: 25,
                  ),
                    SizedBox(width: 8,) ,
                    Text(
                      "7%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(
                    Icons.cloud,color: Color(0xffc4dbf3),
                    size: 25,
                  ),
                    SizedBox(width: 8,) ,
                    Text(
                      "0.555 km/hr",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),

                    ),],),
              ],
            ),
            SizedBox(height: 30,),
            Card(
              color: Color(0xff0c1b2a),
              child: Container (
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Temperature",style: TextStyle(color: Colors.white,),),
                    ),
                    Row(
                      children: [
                        Text("Celcius",style: TextStyle(color: Colors.white),),
                        Icon(Icons.arrow_forward_ios_outlined,size: 12,color: Colors.white,),
                      ],),
                  ],
                ),),),

            SizedBox(height: 16,),
            Card(
              color: Color(0xff0c1b2a),
              child: Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Temperature",style: TextStyle(color: Colors.white,),),
                    ),
                    Row(
                      children: [
                        Text("Celcius",style: TextStyle(color: Colors.white, ),),
                        Icon(Icons.arrow_forward_ios_outlined,size: 12,color: Colors.white,)
                      ],),
                  ],
                ),),),
            SizedBox(height: 16,),
            Card(
              color: Color(0xff0c1b2a),
              child: Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Windspeed",style: TextStyle(color: Colors.white,),),
                    ),
                    Row(
                      children: [
                        Text("Source" ,style: TextStyle(color: Colors.white,),),
                        Icon(Icons.arrow_forward_ios_outlined,size: 12,color: Colors.white,)
                      ],),
                  ],
                ),),),
          ],),),
    );

  }
}
