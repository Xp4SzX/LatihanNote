import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// Ganti 'flutter14' dengan nama project Anda jika berbeda
import 'package:flutter14/note.dart'; 

void main() {
  test('noteColorByDeadline returns correct color by deadline range', () {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    // 1. Test: Sudah Lewat (Overdue)
    final overdue = today.subtract(const Duration(days: 1));
    expect(noteColorByDeadline(overdue), Colors.red.shade900);

    // 2. Test: Besok (Due Tomorrow)
    final dueTomorrow = today.add(const Duration(days: 1));
    expect(noteColorByDeadline(dueTomorrow), Colors.red.shade400);

    // 3. Test: Tanpa Deadline (Null)
    expect(noteColorByDeadline(null), Colors.yellow.shade300);
  });
}