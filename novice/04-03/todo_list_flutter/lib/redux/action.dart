import 'package:meta/meta.dart';
import 'package:todo_list_flutter/model/data_model.dart';

class AddTaskAction{
  final Data data;

  AddTaskAction(this.data);
}

class ToggleItemStateAction{
  final Data data;

  ToggleItemStateAction(this.data);
}

class FetchItemAction{
  final List<Data> list;

  FetchItemAction(this.list);
}

class LoadItemAction{}

class RemoveItemAction{
  final Data data;

  RemoveItemAction(this.data);
}