abstract class ItemEvent {
  final String name;

  ItemEvent(this.name);
}

class AddItemEvent extends ItemEvent {
  AddItemEvent(name) : super(name);
}
