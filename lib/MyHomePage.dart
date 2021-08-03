import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor:  Color(0xff0c1b2a),
        title: Text("Weather"),
        elevation: 0,
      ),

      backgroundColor:  Color(0xff0c1b2a),
      body: Wrap(children: [
        Card(
          color:  Color(0xff36618d),
          shape:RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ) ,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
          child: Container(
              width: 170,
              height: 150,
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
              // color: Colors.deepOrange,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First item
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "22",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          )),
                      Icon(
                        Icons.ac_unit, color: Color(0xffc4dbf3),
                        size: 32,
                      )
                    ],
                  ),

                  //end of first item
                  SizedBox(height: 12,) ,
                  Text(
                    "Newyork",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "USA",
                    style: TextStyle(
                      color: Color(0xffc4dbf3),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8,) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(
                          Icons.cloud,color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                          SizedBox(width: 8,) ,
                          Text(
                            "17%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),

                          ),],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ Icon(
                          Icons.grain_rounded,color: Color(0xffc4dbf3),
                          size: 18,
                        ), SizedBox(width: 8,) ,Text(
                          "47km/h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )],)
                    ],
                  )
                ],
              )),
        ),
        Card(
          color:  Color(0xff36618d),
          shape:RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ) ,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
          child: Container(
              width: 170,
              height: 150,
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
              // color: Colors.deepOrange,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First item
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "22",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          )),
                      Icon(
                        Icons.ac_unit, color: Color(0xffc4dbf3),
                        size: 32,
                      )
                    ],
                  ),

                  //end of first item
                  SizedBox(height: 12,) ,
                  Text(
                    "Newyork",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "USA",
                    style: TextStyle(
                      color: Color(0xffc4dbf3),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8,) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(
                          Icons.cloud,color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                          SizedBox(width: 8,) ,
                          Text(
                            "17%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),

                          ),],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ Icon(
                          Icons.grain_rounded,color: Color(0xffc4dbf3),
                          size: 18,
                        ), SizedBox(width: 8,) ,Text(
                          "47km/h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )],)
                    ],
                  )
                ],
              )),
        ),
        Card(
          color:  Color(0xff36618d),
          shape:RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ) ,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
          child: Container(
              width: 170,
              height: 150,
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
              // color: Colors.deepOrange,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First item
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "22",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          )),
                      Icon(
                        Icons.ac_unit, color: Color(0xffc4dbf3),
                        size: 32,
                      )
                    ],
                  ),

                  //end of first item
                  SizedBox(height: 12,) ,
                  Text(
                    "Newyork",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "USA",
                    style: TextStyle(
                      color: Color(0xffc4dbf3),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8,) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(
                          Icons.cloud,color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                          SizedBox(width: 8,) ,
                          Text(
                            "17%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),

                          ),],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ Icon(
                          Icons.grain_rounded,color: Color(0xffc4dbf3),
                          size: 18,
                        ), SizedBox(width: 8,) ,Text(
                          "47km/h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )],)
                    ],
                  )
                ],
              )),
        ),
        Card(
          color:  Color(0xff36618d),
          shape:RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ) ,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
          child: Container(
              width: 170,
              height: 150,
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
              // color: Colors.deepOrange,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First item
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "22",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          )),
                      Icon(
                        Icons.ac_unit, color: Color(0xffc4dbf3),
                        size: 32,
                      )
                    ],
                  ),

                  //end of first item
                  SizedBox(height: 12,) ,
                  Text(
                    "Newyork",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "USA",
                    style: TextStyle(
                      color: Color(0xffc4dbf3),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8,) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(
                          Icons.cloud,color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                          SizedBox(width: 8,) ,
                          Text(
                            "17%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),

                          ),],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ Icon(
                          Icons.grain_rounded,color: Color(0xffc4dbf3),
                          size: 18,
                        ), SizedBox(width: 8,) ,Text(
                          "47km/h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )],)
                    ],
                  )
                ],
              )),
        ),
        Card(
          color:  Color(0xff36618d),
          shape:RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ) ,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
          child: Container(
              width: 170,
              height: 150,
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
              // color: Colors.deepOrange,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First item
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "22",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          )),
                      Icon(
                        Icons.ac_unit, color: Color(0xffc4dbf3),
                        size: 32,
                      )
                    ],
                  ),

                  //end of first item
                  SizedBox(height: 12,) ,
                  Text(
                    "Newyork",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "USA",
                    style: TextStyle(
                      color: Color(0xffc4dbf3),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8,) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(
                          Icons.cloud,color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                          SizedBox(width: 8,) ,
                          Text(
                            "17%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),

                          ),],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ Icon(
                          Icons.grain_rounded,color: Color(0xffc4dbf3),
                          size: 18,
                        ), SizedBox(width: 8,) ,Text(
                          "47km/h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )],)
                    ],
                  )
                ],
              )),
        ),
        Card(
          color:  Color(0xff36618d),
          shape:RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ) ,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
          child: Container(
              width: 170,
              height: 150,
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
              // color: Colors.deepOrange,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First item
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "22",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          )),
                      Icon(
                        Icons.ac_unit, color: Color(0xffc4dbf3),
                        size: 32,
                      )
                    ],
                  ),

                  //end of first item
                  SizedBox(height: 12,) ,
                  Text(
                    "Newyork",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "USA",
                    style: TextStyle(
                      color: Color(0xffc4dbf3),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8,) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(
                          Icons.cloud,color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                          SizedBox(width: 8,) ,
                          Text(
                            "17%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),

                          ),],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ Icon(
                          Icons.grain_rounded,color: Color(0xffc4dbf3),
                          size: 18,
                        ), SizedBox(width: 8,) ,Text(
                          "47km/h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )],)
                    ],
                  )
                ],
              )),
        ),
      ],),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
