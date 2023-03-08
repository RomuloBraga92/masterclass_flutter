import 'package:playground/cpf_validator.dart';

void main(List<String> arguments) {
  // playground.calculateImc(1.7, 70);

  // print(playground.recursiveFibonacci(0));
  // print(playground.recursiveFibonacci(1));
  // print(playground.recursiveFibonacci(2));
  // print(playground.recursiveFibonacci(3));
  // print(playground.recursiveFibonacci(4));
  // print(playground.recursiveFibonacci(5));
  // print(playground.recursiveFibonacci(6));
  // print(playground.recursiveFibonacci(7));

  // print(playground.ruleOfThree(
  //     group11: null, group12: 2, group21: 4, group22: 8));
  // print(playground.ruleOfThree(
  //     group11: 1, group12: null, group21: 4, group22: 8));
  // print(playground.ruleOfThree(
  //     group11: 1, group12: 2, group21: null, group22: 8));
  // print(playground.ruleOfThree(
  //     group11: 1, group12: 2, group21: 4, group22: null));
  // print(playground.ruleOfThree(
  //     group11: null, group12: null, group21: null, group22: null));
  final cpf = Cpf('07675540433');
  final cpf2 = Cpf('16425692751');
  final cpf3 = Cpf('076.755.404-33');
  final cpf4 = Cpf('164.256.927-51');

  print(cpf.cpfValidator());
  print(cpf2.cpfValidator());
  print(cpf3.cpfValidator());
  print(cpf4.cpfValidator());
}
