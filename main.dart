import 'coffeeMachine.dart';
Future<void> main() async {
  Machine machine = Machine(0,0,0,0);
  machine.setResource(200);

  print(machine.makingCoffee(200,50,50,50, "Латте"));
}
