import 'dart:convert';

import 'package:todo_list_flutter/model/list_data.dart';
import 'package:todo_list_flutter/util/all_library.dart';
import 'action.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String APP_STATE_KEY = "APP_STATE";

void storeDataItemMiddleware(
    Store<ListData> task, action, NextDispatcher next){
  next(action);

  if(action is AddTaskAction||
     action is ToggleItemStateAction||
     action is RemoveItemAction
  ) {
    saveStateToSharedPreferences(task.state);
  }
  if(action is LoadItemAction){
    loadStateFromPref().then((state){
      task.dispatch(new FetchItemAction(state.data));
    });
  }
}

void saveStateToSharedPreferences(ListData data) async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var stateString = json.encode(data.toJson());
  await sharedPreferences.setString(APP_STATE_KEY, stateString);
}

Future<ListData> loadStateFromPref() async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var stateString = sharedPreferences.getString(APP_STATE_KEY);
  Map stateMap = json.decode(stateString);
  return new ListData.fromJson(stateMap);
}