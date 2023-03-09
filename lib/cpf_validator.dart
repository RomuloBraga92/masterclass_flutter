class Cpf {
  final String _cpf;

  Cpf(this._cpf);

  String get cpf => _cpf;

  bool cpfValidator() {
    if (_cpf.length != 11) return false;
    final onlyNumbersCpf = cpf.replaceAll('.', '').replaceAll('-', '');
    final firstDigitInput =
        onlyNumbersCpf.substring(0, onlyNumbersCpf.length - 2);
    final secondDigitInput =
        onlyNumbersCpf.substring(0, onlyNumbersCpf.length - 1);

    final validFirstDigit = digitValidationAlgorithm(firstDigitInput);
    final validSecondDigit = digitValidationAlgorithm(secondDigitInput);

    final isFirstDigitValid =
        validFirstDigit == onlyNumbersCpf[onlyNumbersCpf.length - 2];
    final isSecondDigitValid =
        validSecondDigit == onlyNumbersCpf[onlyNumbersCpf.length - 1];

    return (isFirstDigitValid && isSecondDigitValid);
  }
}

String digitValidationAlgorithm(String target) {
  var multiplyFactor = 2;
  final targetListReversed = target.split('').reversed;

  final multiplyResult = targetListReversed.map((el) {
    final elAsNumber = int.parse(el);
    final elMultiplied = elAsNumber * multiplyFactor;
    multiplyFactor++;
    return elMultiplied;
  }).toList();

  final sumResult = multiplyResult.reduce((acc, current) => acc + current);

  final modularDivisionResult = sumResult % 11;

  if (modularDivisionResult < 2) return '0';
  return (11 - modularDivisionResult).toString();
}
