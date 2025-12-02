import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController taskController = TextEditingController();
  List<String> tasks = [];
  void addTask() {
    if (taskController.text.isNotEmpty) {

      setState((){
        tasks.add(taskController.text);
        taskController.clear();
      });
    }
  }
   void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }
  void editTask(int index) {
    final controller = TextEditingController(text: tasks[index]);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Task'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter new task',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tasks[index] = controller.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todo App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: taskController,
                      decoration: InputDecoration(
                        hintText: 'Enter a task',
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  ElevatedButton(
                    onPressed: addTask,
                    child: const Text('Add'),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                          title: Text(tasks[index]),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  editTask(index);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  deleteTask(index);
                                },
                              ),
                            ],
                          )
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}
