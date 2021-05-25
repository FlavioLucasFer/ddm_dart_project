import 'dart:math';

void main(List<String> arguments) {
  printName('Flavio', 'Fernandes');
  print(basicCalcs(5, 8, 'div'));
  sumOneToTen();
  print(smartMessage());

  print(basicCalcs2(type: 'div', num2: 4, num: 2));
  printName2(lastName: 'Grande', firstName: 'Casa');
  print(createFullArray(num: 5, size: 10));

  var num = 3;

  var arr = createFullArray(num: num, size: 10);

  /// Primeiro exemplo de função anônima
  printRandomInt((e) {
    print('Metade do número aleatório é: ${e / 2}');
  });

  /// Segundo exemplo de função anônima
  arr.asMap().forEach((i, e) => print(e / (num * i)));

  /// Terceiro exemplo de função anônima
  printRandomInt((e) => print('Lá vai mais um número aleatório...'));
}

/// O objetivo desta função é receber o primeiro nome e o sobrenome de um
/// indivíduo e imprimir o nome e o sobrenome juntos.
void printName(String firstName, String lastName) {
  print('$firstName $lastName');
}

/// O objetivo desta função é receber 2 números e um tipo de operação para então
/// realizar o cálculo básico referente à operação escolhida. O tipo de operação
/// pode ser sum, sub, mul, div para executar os cálculos basicos de soma,
/// subtração, multiplicação e divisão respectivamente.
double basicCalcs(double num, double num2, String type) {
  if (type == 'sum') {
    return num + num2;
  } else if (type == 'sub') {
    return num - num2;
  } else if (type == 'mul') {
    return num * num2;
  } else if (type == 'div') {
    return num / num2;
  } else {
    return 0;
  }
}

/// O objetivo desta função é informar qual a soma dos números de 1 até 10.
void sumOneToTen() {
  var oneToTen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var s = 0;

  for (var i = 0; i < oneToTen.length; i++) {
    s += oneToTen[i];
  }

  print('A soma dos valores de 1 até 10 é: $s');
}

/// O objetivo desta função é fornecer uma mensagem inteligente baseando-se
/// no horário atual.
String smartMessage() {
  String message;

  var currentTimestamp = DateTime.now();
  var currentHour = currentTimestamp.hour;

  if (currentHour > 5 && currentHour < 12) {
    message = 'Bom dia';
  } else if (currentHour > 12 && currentHour < 18) {
    message = 'Boa tarde';
  } else if (currentHour > 18 && currentHour < 24) {
    message = 'Boa noite';
  } else {
    message = 'Olha a hora... vai dormir!';
  }

  return message;
}

/// Mesmo objetivo que a função basicCalcs mas com parâmetros nomeados.
double basicCalcs2({double num = 0, double num2 = 0, String type = 'sum'}) {
  return basicCalcs(num, num2, type);
}

/// Mesmo objetivo que a função printName mas com parâmetros nomeados.
void printName2({required String firstName, required String lastName}) {
  printName(firstName, lastName);
}

/// O objetivo desta função é criar um array com tamanho definido no parâmetro
/// size cheio do mesmo número inteiro em todas posições definido no parâmetro
/// num (default = 0).
List<int> createFullArray({required int size, int num = 0}) {
  var arr = <int>[];

  for (var i = 0; i < size; i++) {
    arr.add(num);
  }

  return arr;
}

void printRandomInt(Function callback) {
  dynamic rng = Random();
  rng = rng.nextInt(1000);

  callback(rng);

  print('O número aleatório é: $rng');
}
