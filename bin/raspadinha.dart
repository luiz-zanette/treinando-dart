import 'dart:io';

void main() {
  // ******** RASPADINHAS ******** //

  print("Bem vindo ao programa de raspadinhas do mercado 'No preçinho'!");
  print(
    "\nDigite o valor da compra para saber quantas raspadinhas você ganhou: ",
  );

  double valorCompra = double.parse(stdin.readLineSync()!);

  if (valorCompra >= 50) {
    int raspadinhasGanhas = (valorCompra / 50).floor();
    print("Você ganhou $raspadinhasGanhas raspadinhas!");
  } else {
    print(
      "Você não ganhou raspadinhas. Compre mais de R\$50,00 para ganhar raspadinhas!",
    );
  }
}
