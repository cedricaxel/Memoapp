import 'package:flutter/material.dart';

class Setings extends StatefulWidget {
  @override
  _SetingsState createState() => _SetingsState();
}

class _SetingsState extends State<Setings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reglage",style: TextStyle(
            color: Colors.white
        ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black,width: 1)
                )
            ),
            child: ListTile(
              title: Text("Taches ordre",style: TextStyle(color: Colors.black,fontSize: 19),),
              subtitle: Text("Date limite + Alphabétiquement"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black,width: 1)
                )
            ),
            child: ListTile(
              title: Text("Synchronisation",style: TextStyle(color: Colors.black,fontSize: 19),),
              subtitle: Text("Au lancement de l'application"),
            ),
          ),
        ],
      ),
    );
  }
}
