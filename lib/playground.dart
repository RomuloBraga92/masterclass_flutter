void calculateImc(double height, double weight) {
  final double imc = weight / (height * height);
  late final String imcClassification;

  if (imc < 18.5) {
    imcClassification = 'Abaixo do peso normal.';
  } else if (18.5 <= imc && imc <= 24.9) {
    imcClassification = 'Peso normal.';
  } else if (24.9 < imc && imc <= 29.9) {
    imcClassification = 'Excesso de peso.';
  } else if (29.9 < imc && imc <= 34.9) {
    imcClassification = 'Obesidade classe I.';
  } else if (34.9 < imc && imc <= 39.9) {
    imcClassification = 'Obesidade classe II.';
  } else {
    imcClassification = 'Obesidade classe III.';
  }

  print(
      'Seu imc é ${imc.toStringAsFixed(1)} e sua classificação: $imcClassification');
}

int recursiveFibonacci(int n) {
  if (n < 2) {
    return 0;
  } else if (n == 2) {
    return 1;
  } else {
    return recursiveFibonacci(n - 2) + recursiveFibonacci(n - 1);
  }
}

double? ruleOfThree(
    {double? group11, double? group12, double? group21, double? group22}) {
  bool isOdd(int n) => n % 2 == 1;
  int restOfFour(int n) => n % 4;
  final List<double?> params = [group11, group22, group21, group12];
  final int notNullParams = params.where((param) => param != null).length;
  if (notNullParams != 3) {
    return null;
  } else {
    int nullParamIndex = params.indexOf(null);
    if (isOdd(nullParamIndex)) {
      return params[restOfFour(nullParamIndex + 1)]! *
          params[restOfFour(nullParamIndex + 2)]! /
          params[restOfFour(nullParamIndex + 3)]!;
    } else {
      return params[restOfFour(nullParamIndex + 2)]! *
          params[restOfFour(nullParamIndex + 3)]! /
          params[restOfFour(nullParamIndex + 1)]!;
    }
  }
}
