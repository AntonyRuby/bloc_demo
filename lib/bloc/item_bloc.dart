import 'dart:async';

import 'package:bloc_demo/bloc/item_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'item_event.dart';

ItemBloc itemBloc = ItemBloc(["Orange", "Apple", "Grapes"]);

class ItemBloc extends Bloc<ItemEvent, List<String>> {
  List<String> _itemList;

  @override
  Stream<List<String>> mapEventToState(event) async* {
    if (event is AddItemEvent) {
      _itemList.add(event.name);
    }
    yield _itemList;
  }

  ItemBloc(List<String> initialValue)
      : _itemList = initialValue,
        super(initialValue);
}
