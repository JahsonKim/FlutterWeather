import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather/CityDetails.dart';

import 'api/ApiInterfaces.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  RestDatasource api = new RestDatasource();

  dynamic data;
  bool _isLoading = false;

  List<dynamic> cities = [
    {"name": "Newyork", "country": "USA"},
    {"name": "Nairobi", "country": "KENYA"},
    {"name": "London", "country": "UK"},
    {"name": "Tokyo", "country": "Japan"},
    {"name": "Beijing", "country": "CHINA"},

    {"name": "Lagos", "country": "Nigeria"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    getWeatherData();
    super.initState();
  }

  getWeatherData() async {
    setState(() {
      _isLoading = true;
    });
    await api.getWeatherData().then((String response) {
      //process response
      print(response);
      setState(() {
        _isLoading = false;
        data = json.decode(response);
      });
    }).catchError((exception) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget home() {
      return Wrap(
        children: [
          Card(
            color: Color(0xff36618d),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                          Icons.ac_unit,
                          color: Color(0xffc4dbf3),
                          size: 32,
                        )
                      ],
                    ),

                    //end of first item
                    SizedBox(
                      height: 12,
                    ),
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
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cloud,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "17%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "47km/h",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
          Card(
            color: Color(0xff36618d),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                          Icons.ac_unit,
                          color: Color(0xffc4dbf3),
                          size: 32,
                        )
                      ],
                    ),

                    //end of first item
                    SizedBox(
                      height: 12,
                    ),
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
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cloud,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "17%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "47km/h",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
          Card(
            color: Color(0xff36618d),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                          Icons.ac_unit,
                          color: Color(0xffc4dbf3),
                          size: 32,
                        )
                      ],
                    ),

                    //end of first item
                    SizedBox(
                      height: 12,
                    ),
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
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cloud,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "17%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "47km/h",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
          Card(
            color: Color(0xff36618d),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                          Icons.ac_unit,
                          color: Color(0xffc4dbf3),
                          size: 32,
                        )
                      ],
                    ),

                    //end of first item
                    SizedBox(
                      height: 12,
                    ),
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
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cloud,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "17%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "47km/h",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
          Card(
            color: Color(0xff36618d),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                          Icons.ac_unit,
                          color: Color(0xffc4dbf3),
                          size: 32,
                        )
                      ],
                    ),

                    //end of first item
                    SizedBox(
                      height: 12,
                    ),
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
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cloud,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "17%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "47km/h",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
          Card(
            color: Color(0xff36618d),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                          Icons.ac_unit,
                          color: Color(0xffc4dbf3),
                          size: 32,
                        )
                      ],
                    ),

                    //end of first item
                    SizedBox(
                      height: 12,
                    ),
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
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cloud,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "17%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "47km/h",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
        ],
      );
    }

    Widget weatherData() {
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
                //First item
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      data['current']['temp'].toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.ac_unit,
                          color: Color(0xffc4dbf3),
                          size: 32,
                        ),
                        Text(
                          data['current']['weather'][0]["main"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          data['current']['weather'][0]["description"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),

                //end of first item
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Nairobi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "KENYA",
                  style: TextStyle(
                    color: Color(0xffc4dbf3),
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.cloud,
                          color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          data['current']['wind_speed'].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.grain_rounded,
                          color: Color(0xffc4dbf3),
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          data['current']['humidity'].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
      );
    }

    Widget citiesWidget() {
      return ListView.builder(itemBuilder: (BuildContext context,int index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CityDetails(cities[index])));
          },
          child: Card(
          color: Colors.black,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(cities[index]['name'],style: TextStyle(color: Colors.white),), Text(cities[index]['country'],style: TextStyle(color: Colors.white)),],
        ),),);
      },itemCount: cities.length,);
    }

    return Scaffold(
      appBar: AppBar(
        // backgroundColor:  Color(0xff0c1b2a),
        title: Text("Weather"),
        elevation: 0,
      ),

      backgroundColor: Color(0xff0c1b2a),
      body: citiesWidget(),

      // _isLoading
      //     ? Center(
      //         child: CircularProgressIndicator(),
      //       )
      //     : weatherData(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
