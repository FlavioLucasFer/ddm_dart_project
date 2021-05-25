import 'dart:io';

void main(List<String> arguments) {
  int smaller;
  int bigger;

  var nums = <int>[];
  var num = 1;
  var c = 0;

  print('Informe números inteiros maiores que 0 (pressione 0 para encerrar):');

  while (num > 0) {
    stdout.write('> ');
    num = int.parse(stdin.readLineSync() as String);

    if (num > 0) nums.add(num);
  }

  print('\nOs números informados foram:');

  nums.asMap().forEach((index, e) {
    stdout.write(e);
    if (index < nums.length - 1) stdout.write(', ');

    if (((index + 1) % 3) == 0) print('');
  });

  bigger = nums[0];
  smaller = nums[0];
  for (var i = 1; i < nums.length; i++) {
    if (nums[i] > bigger) bigger = nums[i];
    if (nums[i] < smaller) smaller = nums[i];
  }

  stdout.write('O maior número informado foi: ');
  stdout.write(bigger);

  stdout.write('\nO menor número informado foi: ');
  stdout.write(smaller);

  print('\nPor fim vamos ordenar os números informados:');

  stdout.write('> ');

  nums = selectionSort(nums);

  do {
    stdout.write(nums[c]);

    if (c < nums.length - 1) stdout.write(', ');

    c++;
  } while (c < nums.length);
}

List<int> selectionSort(List<int> arr) {
  int aux;

  for (var i = 0; i < arr.length - 1; i++) {
    var minIndex = i;

    for (var j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) minIndex = j;
    }

    aux = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = aux;
  }

  return arr;
}
