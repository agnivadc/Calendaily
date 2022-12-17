import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        title: Text("New Event"),
        backgroundColor: Colors.deepPurpleAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _textEditingController,
                  maxLines: 3,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      fillColor: Colors.deepPurpleAccent[700],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      prefixIcon: const Icon(
                        Icons.calendar_month_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                      labelText: "Event",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ),
              Builder(builder: (context) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white54),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(340, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(30.0)))),
                        onPressed: () {
                          String newEventText = _textEditingController.text;
                          Navigator.of(context).pop(newEventText);
                        },
                        child: Text("Add")),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
