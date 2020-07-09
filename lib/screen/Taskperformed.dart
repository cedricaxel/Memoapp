import 'package:flutter/material.dart';

class TaskPerformed extends StatefulWidget {
  @override
  _TaskPerformedState createState() => _TaskPerformedState();
}

class _TaskPerformedState extends State<TaskPerformed> {
  var selected = 1;
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF262AAA),
        // title:Text("data")
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(color: Colors.red),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF262AAA),
                    // color: Colors.red
                      // image: DecorationImage(
                      //   image: AssetImage("images/fond.jpg"),
                      //   fit:
                      //   )
                      ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Tâche en Affectué",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.thumb_up, size: 50, color: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 60,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Dismissible(
                        direction: DismissDirection.startToEnd,
                        key: ValueKey(1),
                        background: Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              color: Color(0xFF262AAA)),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(Icons.delete, color: Colors.white),
                          ),
                        ),
                        confirmDismiss: (direction) {
                          return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Attention"),
                                  content: Text("Voulez vous supprimée"),
                                  actions: <Widget>[
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(false);
                                        },
                                        child: Text("Non")),
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(true);
                                        },
                                        child: Text("Oui"))
                                  ],
                                );
                              });
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                                (selected == 1 || selected == 4 || selected == 6)
                                    ? Colors.blue[400]
                                    : Colors.green[400],
                          ),
                          title: Text("Jouer au foo"),
                          subtitle: Text("sport decontractant"),
                          trailing: Text("12h00"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(),
                      ),
                      Dismissible(
                          direction: DismissDirection.startToEnd,
                          key: ValueKey(1),
                          background: Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                color: Color(0xFF262AAA)),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.delete, color: Colors.white),
                            ),
                          ),
                          confirmDismiss: (direction) {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Attention"),
                                    content: Text("Voulez vous supprimée"),
                                    actions: <Widget>[
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(false);
                                          },
                                          child: Text("Non")),
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(true);
                                          },
                                          child: Text("Oui"))
                                    ],
                                  );
                                });
                          },
                          child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.red[400],
                              ),
                              title: Text("Apprendre Flutter"),
                              subtitle: Text("Nouveau Framwork"),
                              trailing: Text("16h00"))),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
