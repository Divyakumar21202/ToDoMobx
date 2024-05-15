// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppState on _AppState, Store {
  Computed<ObservableList<Reminder>>? _$allRemindersComputed;

  @override
  ObservableList<Reminder> get allReminders => (_$allRemindersComputed ??=
          Computed<ObservableList<Reminder>>(() => super.allReminders,
              name: '_AppState.allReminders'))
      .value;
  Computed<ObservableList<Reminder>>? _$currentListComputed;

  @override
  ObservableList<Reminder> get currentList => (_$currentListComputed ??=
          Computed<ObservableList<Reminder>>(() => super.currentList,
              name: '_AppState.currentList'))
      .value;

  late final _$completeRemindersAtom =
      Atom(name: '_AppState.completeReminders', context: context);

  @override
  ObservableList<Reminder> get completeReminders {
    _$completeRemindersAtom.reportRead();
    return super.completeReminders;
  }

  @override
  set completeReminders(ObservableList<Reminder> value) {
    _$completeRemindersAtom.reportWrite(value, super.completeReminders, () {
      super.completeReminders = value;
    });
  }

  late final _$pendingRemindersAtom =
      Atom(name: '_AppState.pendingReminders', context: context);

  @override
  ObservableList<Reminder> get pendingReminders {
    _$pendingRemindersAtom.reportRead();
    return super.pendingReminders;
  }

  @override
  set pendingReminders(ObservableList<Reminder> value) {
    _$pendingRemindersAtom.reportWrite(value, super.pendingReminders, () {
      super.pendingReminders = value;
    });
  }

  late final _$typeOfReminderAtom =
      Atom(name: '_AppState.typeOfReminder', context: context);

  @override
  TypeRemindersList get typeOfReminder {
    _$typeOfReminderAtom.reportRead();
    return super.typeOfReminder;
  }

  @override
  set typeOfReminder(TypeRemindersList value) {
    _$typeOfReminderAtom.reportWrite(value, super.typeOfReminder, () {
      super.typeOfReminder = value;
    });
  }

  late final _$_AppStateActionController =
      ActionController(name: '_AppState', context: context);

  @override
  void addToDo(Reminder reminder) {
    final _$actionInfo =
        _$_AppStateActionController.startAction(name: '_AppState.addToDo');
    try {
      return super.addToDo(reminder);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePresentReminderList(TypeRemindersList type) {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.changePresentReminderList');
    try {
      return super.changePresentReminderList(type);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIsDone(Reminder reminder) {
    final _$actionInfo =
        _$_AppStateActionController.startAction(name: '_AppState.changeIsDone');
    try {
      return super.changeIsDone(reminder);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAllCompleted() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.markAllCompleted');
    try {
      return super.markAllCompleted();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCompleted() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.removeCompleted');
    try {
      return super.removeCompleted();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteReminder(Reminder reminder) {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.deleteReminder');
    try {
      return super.deleteReminder(reminder);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
completeReminders: ${completeReminders},
pendingReminders: ${pendingReminders},
typeOfReminder: ${typeOfReminder},
allReminders: ${allReminders},
currentList: ${currentList}
    ''';
  }
}
