import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({Key key}) : super(key: key);

  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff0c1b2a),

      body: Container(
        margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      child: Column(

        children: [
          SizedBox(height: 40,),
         Row(
           children: [
             Expanded(child:
         Card(
            color:  Color(0xff0c1b2a),

           // margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
              child: Container(
                //height: MediaQuery.of(context).size.height,
                width: 180,
                 height: 180,

                 //margin: EdgeInsets.all(10),
                  // color: Colors.deepOrange,
                 //padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //First item
                         Text(
                                "San Fransisco",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                      //end of first item
                      SizedBox(height: 12,) ,
                      Text(
                        "18",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Cloudy",
                        style: TextStyle(
                          color: Color(0xffc4dbf3),
                          backgroundColor: Color(0xffD4A0D6),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),),
           Icon(
             Icons.cloud,color: Color(0xff1a446f),
             size: 175,
           ),],),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Icon(
                  Icons.cloud,color: Color(0xffc4dbf3),
                  size: 20,
                ),
                  SizedBox(width: 10,) ,
                  Text(
                    "13%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),],),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Icon(
                  Icons.grain_rounded,color: Color(0xffc4dbf3),
                  size: 20,
                ), SizedBox(width: 8,) ,Text(
                  "0.5333",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )],),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ Icon(
                  Icons.grain_rounded,color: Color(0xffc4dbf3),
                  size: 20,
                ), SizedBox(width: 8,) ,Text(
                  "5Km/Hr",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )],)
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ Icon(
              Icons.grain_rounded,color: Color(0xffc4dbf3),
              size: 18,
            ), SizedBox(width: 8,) ,Text(
              "07.00 AM",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            )],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ Icon(
              Icons.grain_rounded,color: Color(0xffc4dbf3),
              size: 18,
            ), SizedBox(width: 8,) ,Text(
              "06.00 PM",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            )],),
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Today",style: TextStyle(color: Colors.white),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
              children:[ Text("10AM", style: TextStyle(color: Colors.white),),SizedBox(height: 10,),
              Icon(Icons.cloud_done_outlined,color: Colors.grey,size: 30,),SizedBox(height: 10,),Text("19",style: TextStyle(color:Colors.white,fontSize: 20),),]
              ),
              Column(
                  children:[ Text("11AM",style: TextStyle(color: Colors.white),),SizedBox(height: 10,),
                    Icon(Icons.cloud_done_outlined,color: Colors.grey,size: 30,),SizedBox(height: 10,),Text("19",style: TextStyle(color:Colors.white,fontSize: 20),),]
              ),
              Column(
                  children:[ Text("12AM",style: TextStyle(color: Colors.white),),SizedBox(height: 10,),
                    Icon(Icons.cloud_done_outlined,color: Colors.grey,size: 30,),SizedBox(height: 10,),Text("19",style: TextStyle(color:Colors.white,fontSize: 20),),]
              ),
              Column(
                  children:[ Text("1PM",style: TextStyle(color: Colors.white),),SizedBox(height: 10,),
                    Icon(Icons.cloud_done_outlined,color: Colors.grey,size: 30,),SizedBox(height: 10,),Text("19",style: TextStyle(color:Colors.white,fontSize: 20),),]
              ),
              Column(
                  children:[ Text("2PM",style: TextStyle(color: Colors.white),),SizedBox(height: 10,),
                    Icon(Icons.cloud_done_outlined,color: Colors.grey,size: 30,),SizedBox(height: 10,),Text("19",style: TextStyle(color:Colors.white,fontSize: 20),),]
              ),
            ],
          ),
SizedBox(height:30),
          Card(
            color: Color(0xff0c1b2a),
          child: Container(
            height: 40,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("Tuesday",style: TextStyle(color: Colors.white,),),
              Icon(Icons.cloud_circle_outlined ,size: 30,color:Color(0xffD4A0D6),),
              Text("19",style: TextStyle(color: Colors.white,),),
              Text("17",style: TextStyle(color: Colors.grey,),),
            ],
          ),),),
          SizedBox(height: 20,),
          Card(
            color: Color(0xff0c1b2a),
          child: Container(
            height: 40,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Wednesday",style: TextStyle(color: Colors.white,),),
              Icon(Icons.cloud_circle_outlined ,size: 30,color:Color(0xffD4A0D6),),
              Text("19",style: TextStyle(color: Colors.white,),),
              Text("17",style: TextStyle(color: Colors.grey,),),
            ],
          ),),),
          SizedBox(height: 20,),
          Card(
            color: Color(0xff0c1b2a),
            child: Container(
              height: 40,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Thursday",style: TextStyle(color: Colors.white,),),
              Icon(Icons.cloud_circle_outlined ,size: 30,color:Color(0xffD4A0D6),),
              Text("19",style: TextStyle(color: Colors.white,),),
              Text("17",style: TextStyle(color: Colors.grey,),),
            ],
          ),),),
        ],),),

      // Wrap(children: [
      //   Card(
      //     color:  Color(0xff36618d),
      //     shape:RoundedRectangleBorder(
      //       borderRadius: const BorderRadius.all(
      //         Radius.circular(15.0),
      //       ),
      //     ) ,
      //     margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
      //     child: Container(
      //         width: 170,
      //         height: 150,
      //         // height: MediaQuery.of(context).size.height,
      //         margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
      //         // color: Colors.deepOrange,
      //         padding: EdgeInsets.all(10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             //First item
      //             Row(
      //               children: [
      //                 Expanded(
      //                     child: Text(
      //                       "22",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 36,
      //                       ),
      //                     )),
      //                 Icon(
      //                   Icons.ac_unit, color: Color(0xffc4dbf3),
      //                   size: 32,
      //                 )
      //               ],
      //             ),
      //
      //             //end of first item
      //             SizedBox(height: 12,) ,
      //             Text(
      //               "Newyork",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 16,
      //               ),
      //             ),
      //             Text(
      //               "USA",
      //               style: TextStyle(
      //                 color: Color(0xffc4dbf3),
      //                 fontSize: 14,
      //               ),
      //             ),
      //             SizedBox(height: 8,) ,
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [Icon(
      //                     Icons.cloud,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ),
      //                     SizedBox(width: 8,) ,
      //                     Text(
      //                       "17%",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 14,
      //                       ),
      //
      //                     ),],),
      //
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   children: [ Icon(
      //                     Icons.grain_rounded,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ), SizedBox(width: 8,) ,Text(
      //                     "47km/h",
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 14,
      //                     ),
      //                   )],)
      //               ],
      //             )
      //           ],
      //         )),
      //   ),
      //   Card(
      //     color:  Color(0xff36618d),
      //     shape:RoundedRectangleBorder(
      //       borderRadius: const BorderRadius.all(
      //         Radius.circular(15.0),
      //       ),
      //     ) ,
      //     margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
      //     child: Container(
      //         width: 170,
      //         height: 150,
      //         // height: MediaQuery.of(context).size.height,
      //         margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
      //         // color: Colors.deepOrange,
      //         padding: EdgeInsets.all(10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             //First item
      //             Row(
      //               children: [
      //                 Expanded(
      //                     child: Text(
      //                       "22",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 36,
      //                       ),
      //                     )),
      //                 Icon(
      //                   Icons.ac_unit, color: Color(0xffc4dbf3),
      //                   size: 32,
      //                 )
      //               ],
      //             ),
      //
      //             //end of first item
      //             SizedBox(height: 12,) ,
      //             Text(
      //               "Newyork",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 16,
      //               ),
      //             ),
      //             Text(
      //               "USA",
      //               style: TextStyle(
      //                 color: Color(0xffc4dbf3),
      //                 fontSize: 14,
      //               ),
      //             ),
      //             SizedBox(height: 8,) ,
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [Icon(
      //                     Icons.cloud,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ),
      //                     SizedBox(width: 8,) ,
      //                     Text(
      //                       "17%",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 14,
      //                       ),
      //
      //                     ),],),
      //
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   children: [ Icon(
      //                     Icons.grain_rounded,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ), SizedBox(width: 8,) ,Text(
      //                     "47km/h",
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 14,
      //                     ),
      //                   )],)
      //               ],
      //             )
      //           ],
      //         )),
      //   ),
      //   Card(
      //     color:  Color(0xff36618d),
      //     shape:RoundedRectangleBorder(
      //       borderRadius: const BorderRadius.all(
      //         Radius.circular(15.0),
      //       ),
      //     ) ,
      //     margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
      //     child: Container(
      //         width: 170,
      //         height: 150,
      //         // height: MediaQuery.of(context).size.height,
      //         margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
      //         // color: Colors.deepOrange,
      //         padding: EdgeInsets.all(10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             //First item
      //             Row(
      //               children: [
      //                 Expanded(
      //                     child: Text(
      //                       "22",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 36,
      //                       ),
      //                     )),
      //                 Icon(
      //                   Icons.ac_unit, color: Color(0xffc4dbf3),
      //                   size: 32,
      //                 )
      //               ],
      //             ),
      //
      //             //end of first item
      //             SizedBox(height: 12,) ,
      //             Text(
      //               "Newyork",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 16,
      //               ),
      //             ),
      //             Text(
      //               "USA",
      //               style: TextStyle(
      //                 color: Color(0xffc4dbf3),
      //                 fontSize: 14,
      //               ),
      //             ),
      //             SizedBox(height: 8,) ,
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [Icon(
      //                     Icons.cloud,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ),
      //                     SizedBox(width: 8,) ,
      //                     Text(
      //                       "17%",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 14,
      //                       ),
      //
      //                     ),],),
      //
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   children: [ Icon(
      //                     Icons.grain_rounded,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ), SizedBox(width: 8,) ,Text(
      //                     "47km/h",
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 14,
      //                     ),
      //                   )],)
      //               ],
      //             )
      //           ],
      //         )),
      //   ),
      //   Card(
      //     color:  Color(0xff36618d),
      //     shape:RoundedRectangleBorder(
      //       borderRadius: const BorderRadius.all(
      //         Radius.circular(15.0),
      //       ),
      //     ) ,
      //     margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
      //     child: Container(
      //         width: 170,
      //         height: 150,
      //         // height: MediaQuery.of(context).size.height,
      //         margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
      //         // color: Colors.deepOrange,
      //         padding: EdgeInsets.all(10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             //First item
      //             Row(
      //               children: [
      //                 Expanded(
      //                     child: Text(
      //                       "22",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 36,
      //                       ),
      //                     )),
      //                 Icon(
      //                   Icons.ac_unit, color: Color(0xffc4dbf3),
      //                   size: 32,
      //                 )
      //               ],
      //             ),
      //
      //             //end of first item
      //             SizedBox(height: 12,) ,
      //             Text(
      //               "Newyork",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 16,
      //               ),
      //             ),
      //             Text(
      //               "USA",
      //               style: TextStyle(
      //                 color: Color(0xffc4dbf3),
      //                 fontSize: 14,
      //               ),
      //             ),
      //             SizedBox(height: 8,) ,
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [Icon(
      //                     Icons.cloud,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ),
      //                     SizedBox(width: 8,) ,
      //                     Text(
      //                       "17%",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 14,
      //                       ),
      //
      //                     ),],),
      //
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   children: [ Icon(
      //                     Icons.grain_rounded,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ), SizedBox(width: 8,) ,Text(
      //                     "47km/h",
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 14,
      //                     ),
      //                   )],)
      //               ],
      //             )
      //           ],
      //         )),
      //   ),
      //   Card(
      //     color:  Color(0xff36618d),
      //     shape:RoundedRectangleBorder(
      //       borderRadius: const BorderRadius.all(
      //         Radius.circular(15.0),
      //       ),
      //     ) ,
      //     margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
      //     child: Container(
      //         width: 170,
      //         height: 150,
      //         // height: MediaQuery.of(context).size.height,
      //         margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
      //         // color: Colors.deepOrange,
      //         padding: EdgeInsets.all(10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             //First item
      //             Row(
      //               children: [
      //                 Expanded(
      //                     child: Text(
      //                       "22",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 36,
      //                       ),
      //                     )),
      //                 Icon(
      //                   Icons.ac_unit, color: Color(0xffc4dbf3),
      //                   size: 32,
      //                 )
      //               ],
      //             ),
      //
      //             //end of first item
      //             SizedBox(height: 12,) ,
      //             Text(
      //               "Newyork",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 16,
      //               ),
      //             ),
      //             Text(
      //               "USA",
      //               style: TextStyle(
      //                 color: Color(0xffc4dbf3),
      //                 fontSize: 14,
      //               ),
      //             ),
      //             SizedBox(height: 8,) ,
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [Icon(
      //                     Icons.cloud,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ),
      //                     SizedBox(width: 8,) ,
      //                     Text(
      //                       "17%",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 14,
      //                       ),
      //
      //                     ),],),
      //
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   children: [ Icon(
      //                     Icons.grain_rounded,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ), SizedBox(width: 8,) ,Text(
      //                     "47km/h",
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 14,
      //                     ),
      //                   )],)
      //               ],
      //             )
      //           ],
      //         )),
      //   ),
      //   Card(
      //     color:  Color(0xff36618d),
      //     shape:RoundedRectangleBorder(
      //       borderRadius: const BorderRadius.all(
      //         Radius.circular(15.0),
      //       ),
      //     ) ,
      //     margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
      //     child: Container(
      //         width: 170,
      //         height: 150,
      //         // height: MediaQuery.of(context).size.height,
      //         margin: EdgeInsets.only(left: 10, right: 3, bottom: 1, top: 5),
      //         // color: Colors.deepOrange,
      //         padding: EdgeInsets.all(10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             //First item
      //             Row(
      //               children: [
      //                 Expanded(
      //                     child: Text(
      //                       "22",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 36,
      //                       ),
      //                     )),
      //                 Icon(
      //                   Icons.ac_unit, color: Color(0xffc4dbf3),
      //                   size: 32,
      //                 )
      //               ],
      //             ),
      //
      //             //end of first item
      //             SizedBox(height: 12,) ,
      //             Text(
      //               "Newyork",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 16,
      //               ),
      //             ),
      //             Text(
      //               "USA",
      //               style: TextStyle(
      //                 color: Color(0xffc4dbf3),
      //                 fontSize: 14,
      //               ),
      //             ),
      //             SizedBox(height: 8,) ,
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [Icon(
      //                     Icons.cloud,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ),
      //                     SizedBox(width: 8,) ,
      //                     Text(
      //                       "17%",
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 14,
      //                       ),
      //
      //                     ),],),
      //
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   children: [ Icon(
      //                     Icons.grain_rounded,color: Color(0xffc4dbf3),
      //                     size: 18,
      //                   ), SizedBox(width: 8,) ,Text(
      //                     "47km/h",
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 14,
      //                     ),
      //                   )],)
      //               ],
      //             )
      //           ],
      //         )),
      //   ),
      // ],),
      // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
