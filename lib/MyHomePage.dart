
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:weather/CityDetails.dart';
import 'package:weather/moredetails.dart';
import 'package:weather/viewcity.dart';
import 'api/ApiInterfaces.dart';
import 'package:weather/api/ApiInterfaces.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  dynamic data;
  int _selectedTab = 0;
  bool _isLoading = false;
  RestDatasource api= new RestDatasource();

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

    Widget hourlyWeather() {
      return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ), itemCount: data['hourly'].length,itemBuilder: (BuildContext context, int index){
        return Container(
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color:  Color(0xa136618f),
              shape:RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
                child: Container(
                    margin: EdgeInsets.only(left: 15, right: 10, bottom: 1, top: 5),
                   padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                  data['hourly'][index]['temp'].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
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
                          "Nairobi",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "0" + index.toString() + "00 Hrs",
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
                                  data['hourly'][index]['humidity'].toString() + "%",
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
                                data['hourly'][index]['wind_speed'].toString(),
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
        );
      },
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

    List<Widget> _widget(){

      return [
        MoreDetails(data),
        _isLoading ? Center( child: CircularProgressIndicator(),
              )
            : hourlyWeather(),
        MyCity(data),
      ];
    }


    return Scaffold(
      appBar: AppBar(
        // backgroundColor:  Color(0xff0c1b2a),
        title: _selectedTab==1 ? TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
            icon: Icon(Icons.search,
            color:Colors.white),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.edit),
                color: Colors.white,
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ): Text("Current Weather") ,
        // title: Text("Weather"),
         elevation: 0,
      ),
      backgroundColor:  Color(0xff0c1b2a),

      body: _widget()[_selectedTab],

      // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Color(0xff0c1b2a),
        selectedIconTheme: IconThemeData(color: Color(0xffE48D9f), size: 30),
        selectedItemColor: Color(0xff0b8787),

        unselectedIconTheme: IconThemeData(
          color: Color(0xff537ba1),
        ),
        unselectedItemColor: Color(0xff537ba1),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedTab,
        onTap: (value){
          setState(() {
            _selectedTab=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "mine"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "fav"),
        ],
      ),
    );
  }
}

