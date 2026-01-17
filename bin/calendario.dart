import 'dart:io';

void main() {
  solicitarNumeroMes();
}


void solicitarNumeroMes() {
  print("Digite um número de 1 a 12 para ver o mês correspondente: ");
  String? entrada = stdin.readLineSync();

  if (entrada == null || int.tryParse(entrada) == null) {
    print("Entrada inválida. Por favor, digite um número válido.");
    return solicitarNumeroMes();
  }

  int numeroMes = int.parse(entrada);

  switch (numeroMes) {
    case 1:
      print("Janeiro");
      break;
    case 2:
      print("Fevereiro");
      break;
    case 3:
      print("Março");
      break;
    case 4:
      print("Abril");
      break;
    case 5:
      print("Maio");
      break;
    case 6:
      print("Junho");
      break;
    case 7:
      print("Julho");
      break;
    case 8:
      print("Agosto");
      break;
    case 9:
      print("Setembro");
      break;
    case 10:
      print("Outubro");
      break;
    case 11:
      print("Novembro");
      break;
    case 12:
      print("Dezembro");
      break;
    default:
      print("Número inválido! Digite um número entre 1 e 12.");
      solicitarNumeroMes();
      break;
  }
}
