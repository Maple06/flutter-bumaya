import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> todo = <String>[
    'Code App',
    'Do Dishes',
    'Go for a run',
    'Buy roses',
    'Make tutorial',
    'Flutter boy'
  ];
  List<bool> isChecked = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[700],
      ),
      body: Container(
        child: Column(
          children: [
            // SizedBox(height:20),
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 12),
                    itemCount: todo.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 80,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.brown[300]),
                        child: Row(
                          children: [
                            SizedBox(width:15),
                            Checkbox(
                              value: isChecked[index],
                              onChanged: (bool? newValue) {
                                setState(() {
                                  if (newValue != null) {
                                    isChecked[index] = newValue;
                                  }
                                });
                              },
                            ),
                            Text(
                              '${todo[index]}',
                              style: TextStyle(
                                  decoration: isChecked[index] ? TextDecoration.lineThrough : TextDecoration.none,
                              ),
                            )
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            todo.add('New Task');
            isChecked.add(false);
          });
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.brown[700],
      ),
    );
  }
}
