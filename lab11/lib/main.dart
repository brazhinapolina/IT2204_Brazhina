import 'dart:io'; 
import 'Machine.dart';
import 'Enums.dart';

Future<void> main() async {

  final coffeeMachine = Machine();


  coffeeMachine.fillResources(500, 500, 500);


  stdout.write('Введите сумму денег: ');

  final inputMoney = stdin.readLineSync();
  final userMoney = int.tryParse(inputMoney ?? '');

  if (userMoney == null) {
    print('Некорректный ввод суммы.');
    return;
  }

  print('Выберите тип кофе:');
  print('1 - Cappuccino (150)');
  print('2 - Espresso   (100)');
  print('3 - Americano  (80)');

  final inputChoice = stdin.readLineSync();
  final choice = int.tryParse(inputChoice ?? '');
  if (choice == null) {
    print('Некорректный ввод.');
    return;
  }


  final selectedType;
  switch (choice) {
    case 1:
      selectedType = CoffeeType.cappuccino;
      break;
    case 2:
      selectedType = CoffeeType.espresso;
      break;
    case 3:
      selectedType = CoffeeType.americano;
      break;
    default:
      print('Некорректный выбор.');
      return;
  }


  final result = await coffeeMachine.buyCoffee(selectedType, userMoney);

  if (result == -1) {
    print('Недостаточно ресурсов для приготовления выбранного кофе.');
  } else if (result == -2) {
    print('Недостаточно денег. Нужно больше средств!');
  } else {

    int change = result;
    print('Ваша сдача: $change');
  }

  print('\nОставшиеся ресурсы:');
  print('Кофейные зёрна: ${coffeeMachine.resources.coffeeBeans}');
  print('Молоко: ${coffeeMachine.resources.milk}');
  print('Вода: ${coffeeMachine.resources.water}');
  print('Выручка(касса): ${coffeeMachine.resources.cash}');
}
