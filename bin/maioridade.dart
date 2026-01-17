import 'dart:io';

void main() {
  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    print("Você pode dirigir.");
  } else {
    print("Você não pode dirigir.");
  }
}
