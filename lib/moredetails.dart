import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails(this.data, {Key key}) : super(key: key);
  final dynamic data;

  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c1b2a),

      body: Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Color(0xff0c1b2a),

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
                                      "Nairobi",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    //end of first item
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                        (widget.data['current']['temp']-272).toInt().toString()+" \u00B0",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 17,
                                    ),
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
                                        widget.data['current']['weather'][0]
                                        ['description'],
                                        style: TextStyle(
                                          color: Color(0xffc4dbf3),
                                          fontSize: 15,
                                        ),
                                      ),),
                                    )

                                  ],
                                )),
                          ),
                        ),
                        Icon(
                          Icons.cloud,
                          color: Color(0xB55B2FA1),
                          size: 175,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
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
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.data['current']['wind_speed'].toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.data['current']['pressure'].toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.grain_rounded,
                              color: Color(0xffc4dbf3),
                              size: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.data['current']['humidity'].toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          "07.00 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
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
                          "06.00 PM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ])),

              SliverToBoxAdapter(
                child: Container(
                  height: 110,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 24,

                      itemBuilder: (BuildContext context, int index) {
                       return Padding(
                            padding: index != 23
                                ? const EdgeInsets.fromLTRB(5, 0, 25, 0)
                                : const EdgeInsets.only(left: 4),
                        child: Column(
                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.,
                          children: [
                            Text(
                              index.toString() + " Am",
                              style: TextStyle(color: Colors.white, ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Icon(
                              Icons.cloud_rounded,
                              color: Colors.deepPurpleAccent,
                              size: 20,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              (widget.data['hourly'][index]['temp']-272).toInt().toString()+" \u00B0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),

                          ],
                        ),
                        );
                      },),
                ),
              ),

              SliverList(delegate: SliverChildBuilderDelegate(  (BuildContext context ,int i){
                return Card(
                  elevation: 0,
                  color: Color(0xff0c1b2a),
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wednesday",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                        Icon(
                          Icons.cloud_circle_outlined,
                          size: 25,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text(
                            (widget.data['daily'][i]['temp']['day']-272).toInt().toString()+" \u00B0",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          (widget.data['daily'][i]['temp']['day']-274).toInt().toString()+" \u00B0",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },childCount: widget.data['daily'].length),),
            ],
          )),

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
