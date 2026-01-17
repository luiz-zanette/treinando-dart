import 'dart:io';

void main() {
  // ******** DADOS CADASTRAIS ******** //

  print("Digite seu nome: ");
  String nome = stdin.readLineSync()!;

  print("Digite seu CPF: ");
  String cpf = stdin.readLineSync()!;

  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("Digite sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  print("Você partiipa da comunidade? (sim/não): ");
  String comunidade = stdin.readLineSync()!;

  print("\n--- Dados Cadastrais ---");
  print("Eu sou $nome");
  print("Meu CPF é $cpf");
  print("Tenho $idade anos");
  print("Minha altura é $altura metros");
  print("Participo da comunidade: $comunidade");
}
