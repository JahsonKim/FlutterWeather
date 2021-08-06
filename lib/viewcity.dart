import 'package:flutter/material.dart';

import 'moredetails.dart';

class MyCity extends StatefulWidget {
  const MyCity(this.data,{Key key}) : super(key: key);
 final dynamic data;
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

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[

                  Icon(Icons.my_location, size: 32,color: Colors.blueAccent,),
                  SizedBox(width: 8,),
                  Text(widget.data['timezone'].toString(),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),),
                ]),
            SizedBox(height: 10,),
            Text("Nairobi,Kenya",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
            SizedBox(height: 16,),
            Icon(Icons.nightlight_round,size: 150,color: Color(0xffD4A0D6),),
            SizedBox(height: 16,),
            Card(
              elevation: 0,
              color: Colors.deepPurpleAccent,
              shape:RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 28,
                child:
                Text(
                  widget.data['current']['weather'][0]['main'],
                  style: TextStyle(
                    color: Color(0xffc4dbf3),
                    fontSize: 15,
                  ),
                ),),
            ),
            SizedBox(height: 16,),
            Text((widget.data['current']['temp']-272).toInt().toString()+" \u00B0",style: TextStyle( color: Colors.white, fontSize: 45) ),
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
                      widget.data['current']['wind_speed'].toString(),
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
                      widget.data['current']['uvi'].toString(),
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
                      widget.data['current']['clouds'].toString(),
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
                        Text("m/s",style: TextStyle(color: Colors.white, ),),
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
