// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:chat_flutter/chatmessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var _chatController= new TextEditingController();
  final List<ChatMessage> _message = <ChatMessage>[];

  void _handeSubmit(String text){
    _chatController.clear();
    var message = new ChatMessage(text: text);
    var index = 0;
    var element = message;

    setState(() {
      _message.insert(index, element);
    });
  }
  
  Widget _chatEnvironment(){
    return IconTheme(
        data: new IconThemeData(color: Colors.blue),
        child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: [
              new Flexible(
                child: new TextField(
                  decoration: new InputDecoration.collapsed(hintText: "Start typing ..."),
                  controller: _chatController,
                  onSubmitted: _handeSubmit,
                ),
              ),
              new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                    icon: Icon(Icons.send),
                    onPressed: ()=> _handeSubmit(_chatController.text)),
              ),
            ],
          ),
        )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,int index)=> _message[index],
              itemCount: _message.length,
            )
        ),
        Divider(height: 2.0),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _chatEnvironment(),
        )
      ],
    );
  }
}
