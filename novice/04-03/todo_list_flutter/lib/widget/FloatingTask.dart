import 'package:flutter/material.dart';
import 'package:todo_list_flutter/util/all_library.dart';
///
///Create Floating with notch
 ///
// ignore: must_be_immutable
class FloatingTask extends StatefulWidget {
  String label;
  Icon icon;

  FloatingTask(this.label, this.icon);

  @override
  _FloatingTaskState createState() => _FloatingTaskState();
}

class _FloatingTaskState extends State<FloatingTask> {
  @override
  Widget build(BuildContext context) {
//    final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey();
    return new Scaffold(
        appBar: AppBar(title: new Text(widget.label)),
        body: new ListDataWidget(),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 3.0,
          icon: widget.icon,
          label: new Text(
            widget.label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => new AddItemBottomSheet());
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: new PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: new Container(
              height: 55.0,
              child: BottomAppBar(
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
        ),
    );
  }
}

/**
 * Membuat Bottomsheet yang memiliki textfield
 */
typedef OnAddCallback = Function(String dataTugas);

class AddItemBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<ListData, OnAddCallback>(
      converter: (store) {
        return (dataTugas) {
          store.dispatch(AddTaskAction(Data(dataTugas, false)));
        };
      },
      builder: (context, callback) {
        return new AddItemBottomSheetWidget(callback);
      },
    );
  }
}

class AddItemBottomSheetWidget extends StatefulWidget {
  final OnAddCallback callback;

  AddItemBottomSheetWidget(this.callback);

  @override
  State<StatefulWidget> createState() => new AddItemBottomSheetState(callback);
}

class AddItemBottomSheetState extends State<AddItemBottomSheetWidget> {
  String dataTugas;

  final OnAddCallback callback;
  final myController = TextEditingController();

  //New Code
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  AddItemBottomSheetState(this.callback);

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.all(15.0),
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: new TextField(
                    autofocus: true,
                    controller: myController,
                    decoration: new InputDecoration(
                        labelText: 'Tugas', hintText: 'contoh koding'),
                    //lost
                  ),
                )
              ],
            ),
            new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    setState(() {
                      // dataTugas = myController.text;
                      callback(myController.text);
                    });
                    Navigator.pop(context);
                    // callback(dataTugas);
                  },
                  child: new Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ));
  }

// _handleTextChanged(String newStringData) {
//   print(dataTugas);
//   setState(() {
//     dataTugas = newStringData;
//   });
// }
}