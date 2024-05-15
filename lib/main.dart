import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_mvc/app_state.dart';
import 'package:todo_mvc/reminder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Make a ToDo'),
              controller: controller,
              onSubmitted: (value) {
                appState.addToDo(Reminder(message: value));
                controller.clear();
              },
            ),
            Observer(builder: (context) {
              return Column(
                children: [
                  RadioListTile(
                      title: const Text('All Reminders'),
                      value: TypeRemindersList.all,
                      groupValue: appState.typeOfReminder,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        appState.changePresentReminderList(
                            val ?? TypeRemindersList.all);
                      }),
                  RadioListTile(
                      title: const Text('Pending Reminders'),
                      value: TypeRemindersList.pending,
                      groupValue: appState.typeOfReminder,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        appState.changePresentReminderList(
                            val ?? TypeRemindersList.all);
                      }),
                  RadioListTile(
                      title: const Text('Completed Reminders'),
                      value: TypeRemindersList.complete,
                      groupValue: appState.typeOfReminder,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        appState.changePresentReminderList(
                            val ?? TypeRemindersList.all);
                      }),
                ],
              );
            }),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      appState.removeCompleted();
                    },
                    child: const Text('Remove Completed')),
                TextButton(
                    onPressed: () {
                      appState.markAllCompleted();
                    },
                    child: const Text('Mark All Completed')),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (context) {
                  return Text(
                      '${appState.pendingReminders.length} Pending ToDo\'s , ${appState.completeReminders.length} Completed ToDo\'s');
                }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Observer(builder: (context) {
                return ListView(
                  children: appState.currentList.map((e) {
                    return ListTile(
                      leading: e.isDone
                          ? IconButton(
                              onPressed: () {
                                appState.changeIsDone(e);
                              },
                              icon: const Icon(
                                Icons.check_box,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                appState.changeIsDone(e);
                              },
                              icon: const Icon(
                                Icons.check_box_outline_blank_sharp,
                              ),
                            ),
                      title: Text(e.message),
                      trailing: IconButton(
                        onPressed: () {
                          appState.deleteReminder(e);
                        },
                        icon: const Icon(
                          Icons.delete,
                        ),
                      ),
                    );
                  }).toList(),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
