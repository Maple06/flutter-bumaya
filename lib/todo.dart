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

  void deleteItem(int index) {
    if (!isChecked[index]) { // Only show confirmation modal if checkbox is false
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Hapus Tugas'),
            content: Text('Tugas ini belum selesai. Apakah anda yakin?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the modal
                },
                child: Text('Batal'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the modal
                  setState(() {
                    todo.removeAt(index);
                    isChecked.removeAt(index);
                  });
                },
                child: Text('Hapus'),
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        todo.removeAt(index);
        isChecked.removeAt(index);
      });
    }
  }


  void openEditTextModal(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Set this property to true
      builder: (BuildContext context) {
        return SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                initialValue: todo[index],
                onChanged: (newValue) {
                  setState(() {
                    todo[index] = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Edit Task',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }


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
                      return GestureDetector(
                        onTap: () {
                          openEditTextModal(context, index);
                        },
                        child: Container(
                          height: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.brown[300]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
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
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(onPressed: (){
                                  deleteItem(index);
                                }, icon: Icon(Icons.delete_outline))
                              ],
                            ),
                          ),
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
