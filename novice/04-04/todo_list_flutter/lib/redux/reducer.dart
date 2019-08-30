

import 'package:todo_list_flutter/util/all_library.dart';

ListData listDataReducer(ListData stateList, dynamic action) {
  if (action is AddTaskAction) {
    return addItem(stateList.data, action);
  } else if (action is ToggleItemStateAction) {
    return toggleItemState(stateList.data, action);
  } else if (action is RemoveItemAction) {
    return removeItem(stateList.data, action);
  } else if (action is FetchItemAction) {
    return loadItem(action);
  }
  return stateList;
}

ListData addItem(List<Data> data, AddTaskAction action) {
  return new ListData(List.from(data)..add(action.data));
}

ListData toggleItemState(List<Data> data, ToggleItemStateAction action) {
  return new ListData(data
      .map((item) =>
            item.tugas == action.data.tugas
            ? action.data
            : item)
      .toList());
}

ListData removeItem(List<Data> data, RemoveItemAction action) {
  return new ListData(
      List.from(data)
        ..removeWhere((item) =>
        item.tugas == action.data.tugas)
  );
}

ListData loadItem(FetchItemAction action) {
  return new ListData(action.list);
}
