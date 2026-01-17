import 'dart:io';

void main() {
  // ******** CALCULADORA DE SALÁRIO ******** //

  print("Digite as horas trabalhadas no mês: ");
  int horasTrabalhadas = int.parse(stdin.readLineSync()!);

  double valorHora = 50.0;
  double salarioBruto = horasTrabalhadas * valorHora;
  double desconto = salarioBruto * 0.05;
  double salarioLiquido = salarioBruto - desconto;

  print("O valor do salário liquido é: R\$ $salarioLiquido");
}
