import 'package:calendaily/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        title: Text("Event Scheduler"),
        backgroundColor: Colors.deepPurpleAccent[700],
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(30),
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: Icon(Icons.calendar_month_rounded),
                  title: _list[index],
                  tileColor: Colors.white,
                  ),
            );
          }),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: () async {
            String newText = await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NewEventScreen()));
            setState(() {
              _list.add(Text(newText));
            });
          },
          child: Icon(Icons.add_box),
          backgroundColor: Colors.deepPurpleAccent[700],
        );
      }),
    ));
  }
}
