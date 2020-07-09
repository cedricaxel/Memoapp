import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor:Colors.blue ,
        title:Text("Profile",style: TextStyle(
            color: Colors.white
        ),),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[

          Expanded(child:
          Container(
            width: double.infinity,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
                Text("Cedric Axel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),)
              ],
            ),
          )),
          Expanded(
              child: Container(
            width: double.infinity,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black,width: 1)
                      )
                  ),
                  child: ListTile(
                    leading: Icon(Icons.settings,color: Colors.black,),
                    title: Text("Paramètre",style: TextStyle(color: Colors.black,fontSize: 19),),
                    trailing: Icon(Icons.arrow_forward_ios,size: 23,color: Colors.black,),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black,width: 1)
                      )
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person,color: Colors.black,),
                    title: Text("Deconnexion",style: TextStyle(color: Colors.black,fontSize: 19),),
                    trailing: Icon(Icons.arrow_forward_ios,size: 23,color: Colors.black,),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
