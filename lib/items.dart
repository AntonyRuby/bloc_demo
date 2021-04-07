import 'package:bloc_demo/bloc/item_bloc.dart';
import 'package:bloc_demo/bloc/item_event.dart';
import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add New Item"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                controller: _textEditingController,
              ),
              Spacer(),
              Container(
                color: Colors.green,
                width: 90,
                height: 30,
                child: InkWell(
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    String name = _textEditingController.text;

                    itemBloc.add(AddItemEvent(name));
                    _textEditingController.text = "";
                  },
                ),
              )
            ],
          ),
        ));
  }
}
