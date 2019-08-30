import 'util/all_library.dart';

void main() {
  runApp(new MaterialApp(
      home: new TodoAppPage(),
      theme: new ThemeData(primarySwatch: Colors.purple),
  ));
}

class TodoAppPage extends StatefulWidget {
  @override
  TodoAppPageState createState() => new TodoAppPageState();
}

class TodoAppPageState extends State<TodoAppPage> {
  final DevToolsStore<ListData> store =
  new DevToolsStore(
      listDataReducer,
      initialState: ListData.init,
      middleware: [storeDataItemMiddleware]
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreProvider<ListData>(
      store: store,
      child: new Scaffold(
        appBar: AppBar(title: Text('Todo List App')),
        body: new StoreBuilder<ListData>(
            onInit:(store)=> store.dispatch(new LoadItemAction()),
            builder: (context, store)=>
            new DataTodo()
        ),
      ),
    );
  }
}
const String label = "Add new task";

// ignore: must_be_immutable
class DataTodo extends StatelessWidget {
  Icon icon = Icon(Icons.add);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      new FloatingTask(label, icon);
  }
}
