import 'package:mobx/mobx.dart';
import 'package:todo_mvc/reminder.dart';

part 'app_state.g.dart';

final appState = AppState();

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
  @observable
  ObservableList<Reminder> completeReminders = ObservableList();

  @observable
  ObservableList<Reminder> pendingReminders = ObservableList();

  @computed
  ObservableList<Reminder> get allReminders =>
      ObservableList.of([...completeReminders, ...pendingReminders]);

  @observable
  TypeRemindersList typeOfReminder = TypeRemindersList.all;

  @action
  void addToDo(Reminder reminder) {
    pendingReminders.add(reminder);
  }

  @action
  void changePresentReminderList(TypeRemindersList type) {
    typeOfReminder = type;
  }

  @action
  void changeIsDone(Reminder reminder) {
    reminder.isDone = !reminder.isDone;
    completeReminders.remove(reminder);
    pendingReminders.remove(reminder);
    if (reminder.isDone) {
      completeReminders.add(reminder);
    } else {
      pendingReminders.add(reminder);
    }
  }

  @computed
  ObservableList<Reminder> get currentList {
    switch (typeOfReminder) {
      case TypeRemindersList.all:
        return allReminders;
      case TypeRemindersList.complete:
        return completeReminders;
      case TypeRemindersList.pending:
        return pendingReminders;
    }
  }

  @action
  void markAllCompleted() {
    for (var rem in pendingReminders) {
      rem.isDone = true;
    }
    completeReminders.addAll(pendingReminders);
    pendingReminders = ObservableList();
  }

  @action
  void removeCompleted() {
    completeReminders = ObservableList();
  }

  @action
  void deleteReminder(Reminder reminder) {
    if (pendingReminders.remove(reminder)) {
    } else {
      completeReminders.remove(reminder);
    }
  }
}

enum TypeRemindersList { all, complete, pending }
