import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({Key key}) : super(key: key);

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  // priorité
  int priorite=1;
  int urgent=0;
  int important=1;
  int moins=2;

  //rapelle
  static const menuItems = <String>[
    '15min avant',
    '30min avant',
    '1heure avant',
    '2heures avant',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems.map((String value) => DropdownMenuItem<String>(value: value, child: Text(value),),).toList();

  String _btn1SelectedVal = '15min avant';
  String _btn2SelectedVal;
  String _btn3SelectedVal;

  //heure
  var dateofday =" Date de la tache ";
  var heureofday=" Heure de la tache";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nouvelle tache",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             Container(
               width: MediaQuery.of(context).size.width/1.1,
               height: MediaQuery.of(context).size.height/10,
               decoration: BoxDecoration(
                 color: Colors.white
               ),
               child: TextField(
                 decoration: InputDecoration(
                   labelStyle: TextStyle(color: Colors.blue),
                   labelText: "Nom de tache",
                   hintText: 'Veuillez entrer le nom de la tache'
                 ),
               ),
             ),
             Container(padding: EdgeInsets.only(
             left: 10,
             right: 10,
           ),
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height/8,
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text("Date :",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),),
                 InkWell(
                   child: Container(
                     width: MediaQuery.of(context).size.width,
                     height: MediaQuery.of(context).size.height/13,
                     decoration: BoxDecoration(

                       color: Colors.white
                     ),
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text(dateofday,style: TextStyle(color: Colors.grey,fontSize: 18),),
                         Icon(Icons.today,color: Colors.grey,)
                       ],
                     ),
                   ),
                   onTap:  () {
                       showDatePicker(
                         context: context,
                          initialDate: DateTime.now(),
                             firstDate: DateTime(2018),
               lastDate: DateTime(2025),
               ).then((DateTime value) {
               if (value != null) {
               setState(() {
                 dateofday = " ${value.year.toString()}/${value.month.toString().padLeft(2,"0")}/${value.day.toString()} ";

               });
               }
               });
               },
                 )
               ],
             ),
           ),
              Container(padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/8,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Heure :",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),),
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/13,
                        decoration: BoxDecoration(

                            color: Colors.white
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(heureofday,style: TextStyle(color: Colors.grey,fontSize: 18),),
                            Icon(Icons.access_time,color: Colors.grey,)
                          ],
                        ),
                      ),
                      onTap:  () {
                        DateTime now = DateTime.now();
                        showTimePicker(
                          context: context,
                          initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
                        ).then((TimeOfDay value) {
                          if (value != null) {
                         setState(() {
                           heureofday = " ${value.hour.toString()}h:${value.minute.toString().padLeft(2,"0")}min";

                         });
                          }
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/8,
                color: Colors.transparent,
                child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Priorité :",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        InkWell(
                          onTap: (){
                            setState(() {
                              priorite=urgent;
                            });
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height/13,
                              color: Colors.transparent,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      border:(priorite==urgent)?Border.all(
                                        color: Colors.black,width: 2
                                      ):Border(),
                                        shape: BoxShape.circle,
                                        color: Colors.red
                                    ),
                                  ),
                                  Text(" Urgent ",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: (priorite==urgent)?FontWeight.bold:null),),

                                ],
                              )
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              priorite =important;
                            });
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height/13,
                              color: Colors.transparent,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border:(priorite==important)?Border.all(
                                            color: Colors.black,width: 2
                                        ):Border(),

                                        shape: BoxShape.circle,
                                        color: Colors.green
                                    ),
                                  ),
                                  Text(" Important ",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: (priorite==important)?FontWeight.bold:null),),

                                ],
                              )
                          ),
                        ),
                        InkWell(onTap: (){
                          setState(() {
                            priorite=moins;
                          });
                        },
                          child: Container(
                              height: MediaQuery.of(context).size.height/13,
                              color: Colors.transparent,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border:(priorite==moins)?Border.all(
                                            color: Colors.black,width: 2
                                        ):Border(),
                                        shape: BoxShape.circle,
                                        color: Colors.blue
                                    ),
                                  ),
                                  Text(" Moins Important ",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: (priorite==moins)?FontWeight.bold:null),),

                                ],
                              )
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/9,
                color: Colors.transparent,
                child:Row(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/9,
                        color: Colors.transparent,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Rapel :",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),),
                            DropdownButton<String>(
                              // Must be one of items.value.
                              value: _btn1SelectedVal,
                              onChanged: (String newValue) {
                                setState(() {
                                  _btn1SelectedVal = newValue;
                                });
                              },
                              items: this._dropDownMenuItems,
                            ),
                          ],
                        )
                    ),

                  ],
                ),
              ),
              Container(padding:EdgeInsets.only(right: 4) ,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/10,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/12,
                      decoration: BoxDecoration(
                        color: Colors.blue
                      ),
                      child: Text("Enregistrer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    )
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
