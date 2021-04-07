import 'package:bloc_demo/bloc/item_bloc.dart';
import 'package:bloc_demo/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("Redrawing the screen");
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Bloc demo")),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Items()));
          },
          child: Icon(Icons.add),
        ),
        body: BlocBuilder(
          bloc: itemBloc,
          builder: (context, list) {
            print(list.length);
            if (list.length > 0) {
              return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    String name = list[index];

                    return Card(
                      child: ListTile(
                        title: Text(name),
                      ),
                    );
                  });
            } else {
              return Center(
                child: Text("No items in the list :("),
              );
            }
          },
        ));
  }
}
