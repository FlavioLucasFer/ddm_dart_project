import 'package:ddm_dart_project/ddm_dart_project.dart' as ddm_dart_project;
import 'dart:io';

void fibonacci(int x) {
  var fibonacci = [];
  var i = 1;

  if (x == 1) {
    fibonacci.add(1);
  } else if (x > 1) {
    fibonacci.add(1);
    fibonacci.add(1);
  }

  while (true) {
    var nextValue = fibonacci[i - 1] + fibonacci[i];

    if (nextValue >= x) {
      break;
    }

    fibonacci.add(nextValue);
    i++;
  }

  for (i = 0; i < fibonacci.length; i++) {
    print(fibonacci[i]);
  }
}

void main(List<String> arguments) {
  print('Bem vindo! qual seu nome?');
  var name = stdin.readLineSync();

  print('\nÉ um prazer conhecê-lo $name');

  print('Por favor, nos informe um número ' +
      'limite para calcularmos Fibonacci:');
  dynamic limitNumber = stdin.readLineSync();
  limitNumber = int.parse(limitNumber);

  print('\nA sequência de Fibonacci até o número $limitNumber é:');

  fibonacci(limitNumber);

  print('\nObrigado por usar o sistema!');
}
