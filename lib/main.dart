import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Tasks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Daily Tasks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ExpansionTile(
              title: Text(
              "Morning",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                createTaskItem("Make your bed"),
                createTaskItem("Prep food"),
              ],
              ),
              SizedBox(height: 8),
              ExpansionTile(
              title: Text(
              "Afternoon",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
              createTaskItem("Work on CIS project(1hr)"),
              createTaskItem("Exercise(30 mins)"),
              createTaskItem("Read a book(30 mins)"),
              ]
              ),
              SizedBox(height: 8),
              ExpansionTile(
              title: Text(
                "Evening",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
              createTaskItem("Daily night routine"),
              createTaskItem("Plan for next day"),
              createTaskItem("Journal"),
              ]
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('Add Task feature coming soon!'),
            duration: Duration(seconds: 3),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }

Widget createTaskItem(String taskName) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: null),
        SizedBox(width: 2),
        Text(taskName),
      ],
    );
  }

}
