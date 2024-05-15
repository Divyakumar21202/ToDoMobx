// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Reminder on _Reminder, Store {
  late final _$isDoneAtom = Atom(name: '_Reminder.isDone', context: context);

  @override
  bool get isDone {
    _$isDoneAtom.reportRead();
    return super.isDone;
  }

  @override
  set isDone(bool value) {
    _$isDoneAtom.reportWrite(value, super.isDone, () {
      super.isDone = value;
    });
  }

  late final _$messageAtom = Atom(name: '_Reminder.message', context: context);

  @override
  String get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  late final _$_ReminderActionController =
      ActionController(name: '_Reminder', context: context);

  @override
  void checkedOrUnchecked(Reminder reminder) {
    final _$actionInfo = _$_ReminderActionController.startAction(
        name: '_Reminder.checkedOrUnchecked');
    try {
      return super.checkedOrUnchecked(reminder);
    } finally {
      _$_ReminderActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDone: ${isDone},
message: ${message}
    ''';
  }
}
