import 'package:mobx/mobx.dart';

part 'reminder.g.dart';

class Reminder = _Reminder with _$Reminder;

abstract class _Reminder with Store {
  _Reminder({required this.message});

  @observable
  bool isDone = false;

  @observable
  String message;

  @action
  void checkedOrUnchecked(Reminder reminder) {
    if (reminder.isDone) {
      reminder.isDone = false;
    } else {
      reminder.isDone = true;
    }
  }
}