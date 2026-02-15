import 'dart:io';
import 'dart:math';

void main() {
  print("Введите оператор (+, -, *, /, ~/, %, pow):");
  String ok = stdin.readLineSync()!;

  switch (ok) {
    case '+':
    case '-':
    case '*':
    case '/':
    case '~/':
    case '%':
    case 'pow':
      break;
    default:
      print("Неизвестный оператор!");
      return;
  }

  print("Введите число 1:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Введите число 2:");
  double num2 = double.parse(stdin.readLineSync()!);

  switch (ok) {
    case '+':
      print("Результат: ${num1 + num2}");
      break;
    case '-':
      print("Результат: ${num1 - num2}");
      break;
    case '*':
      print("Результат: ${num1 * num2}");
      break;
    case '/':
      if (num2 == 0) {
        print("Ошибка: Деление на ноль");
      } else {
        print("Результат: ${num1 / num2}");
      }
      break;
    case '~/':
      if (num2 == 0) {
        print("Ошибка: Деление на ноль");
      } else {
        print("Результат: ${num1 ~/ num2}");
      }
      break;
    case '%':
      if (num2 == 0) {
        print("Ошибка: Деление на ноль");
      } else {
        print("Результат: ${num1 % num2}");
      }
      break;
    case 'pow':
      print("Результат: ${pow(num1, num2)}");
      break;
  }
}
