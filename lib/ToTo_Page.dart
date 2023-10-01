import 'package:flutter/material.dart';
import 'package:to_do_app/ToDoStyle.dart';
class toDo_Page extends StatefulWidget {
  const toDo_Page({super.key});

  @override
  State<toDo_Page> createState() => _toDo_PageState();
}

class _toDo_PageState extends State<toDo_Page> {

  List ToDoList = [];
  String item="";

  TodoItemInput(content){
    setState(() {
      item=content;
    });
  }
  
  addItem(){
    setState(() {
      ToDoList.add({'item':item});
    });
  }

  removeItem(index){
    setState(() {
      ToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do App"),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
                child: Row(
                  children: [
                    Expanded(
                      flex: 70,
                        child: TextFormField(onChanged: (content){TodoItemInput(content);}, decoration: ToDoinputDecoration("Add Item"),)
                    ),
                    Expanded(
                      flex: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ElevatedButton(
                            onPressed: (){
                              addItem();
                            },
                            style: ToDoEleveted(),
                            child: const Text("Add"),
                          ),
                        )
                    )
                  ],
                )
            ),
            Expanded(
              flex: 90,
                child: ListView.builder(
                  itemCount: ToDoList.length,
                    itemBuilder: (context, index){
                    return Card(
                      child: ToDoSizeBox(
                        Row(
                          children: [
                            Expanded(
                              flex: 70,
                                child: Text(ToDoList[index]['item'].toString())
                            ),
                            Expanded(
                                flex: 30,
                                child: TextButton(
                                  onPressed: (){
                                    removeItem(index);
                                  },
                                  child: const Icon(Icons.delete),
                                )
                            )
                          ],
                        )
                      ),
                    );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}
