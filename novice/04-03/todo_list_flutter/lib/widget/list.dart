import 'package:flutter/material.dart';
import 'package:todo_list_flutter/model/data_model.dart';
import 'package:todo_list_flutter/model/list_data.dart';
import 'package:todo_list_flutter/redux/action.dart';
import 'package:todo_list_flutter/util/all_library.dart';

typedef OnStateChanged = Function(Data data);
typedef onRemoveIconClicked = Function(Data data);

class ListDataItem extends StatelessWidget {
  final Data data;
  ListDataItem(this.data);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<ListData, OnStateChanged>(
      converter: (store) {
        return (item) {
          store.dispatch(RemoveItemAction(item));
        };
      },
      builder: (context, callback) {
        return Dismissible(
            key: Key(data.tugas),
            background: Container(
              color: Colors.red,
            ),
            onDismissed: (direction) {
              callback(Data(data.tugas, data.isChecked));
              print("menghapus");
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("${data.tugas} dihapus")));

            },
            child: new ListTile(
              title: new Text(data.tugas),
              leading: new StoreConnector<ListData, OnStateChanged>(
                converter: (store) => (item) {
                    store.dispatch(ToggleItemStateAction(item));
                  },
                builder: (context, callback) {
                  return new Checkbox(
                    value: data.isChecked,
                    onChanged: (bool value) {
                      callback(Data(data.tugas, value));
                    },
                  );
                },
              ),
            ));
      },
    );
  }
}

class ListDataWidget extends StatelessWidget {
  //Build widget base state of store
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<ListData, List<Data>>(
      //Convert store into viewmodel hasilnya akan dimasukkan kedalam widget
      converter: (store) => store.state.data,
      builder: (context, list) {
        return new ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, position) => new ListDataItem(list[position]),
        );
      },
    );
  }
}
