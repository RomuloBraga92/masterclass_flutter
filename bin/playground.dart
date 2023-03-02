import 'package:playground/playground.dart' as playground;

void main(List<String> arguments) {
  playground.calculateImc(1.7, 70);

  print(playground.recursiveFibonacci(0));
  print(playground.recursiveFibonacci(1));
  print(playground.recursiveFibonacci(2));
  print(playground.recursiveFibonacci(3));
  print(playground.recursiveFibonacci(4));
  print(playground.recursiveFibonacci(5));
  print(playground.recursiveFibonacci(6));
  print(playground.recursiveFibonacci(7));

  print(playground.ruleOfThree(
      group11: null, group12: 2, group21: 4, group22: 8));
  print(playground.ruleOfThree(
      group11: 1, group12: null, group21: 4, group22: 8));
  print(playground.ruleOfThree(
      group11: 1, group12: 2, group21: null, group22: 8));
  print(playground.ruleOfThree(
      group11: 1, group12: 2, group21: 4, group22: null));
  print(playground.ruleOfThree(
      group11: null, group12: null, group21: null, group22: null));
}
