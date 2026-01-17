import 'dart:io';

void main() {
  List<String> operacoes = ["deposito", "retirada", "transferencia", "pagamento"];
  String operacaoEscolhida = escolherOperacao(operacoes);
  double valor = obterValorOperacao();
  
  print("\n--- Recibo ---");
  print("Operação de $operacaoEscolhida com valor de R\$ ${valor.toStringAsFixed(2)} realizada com sucesso.");
}

String escolherOperacao(List<String> operacoes) {
  while (true) {
    print("Escolha uma operação $operacoes:");
    String? entradaOperacao = stdin.readLineSync()?.toLowerCase();

    if (entradaOperacao != null && operacoes.contains(entradaOperacao)) {
      print("Operação '$entradaOperacao' escolhida com sucesso.");
      return entradaOperacao;
    } else {
      print("Operação inválida. Tente novamente.");
    }
  }
}

double obterValorOperacao() {
  while (true) {
    print("Digite o valor da operação:");
    String? entradaValor = stdin.readLineSync();
    
    // tryParse retorna null se a conversão falhar, evitando erro no programa
    double? valorConvertido = double.tryParse(entradaValor!);

    if (valorConvertido != null && valorConvertido > 0) {
      print("Valor de R\$ ${valorConvertido.toStringAsFixed(2)} registrado.");
      return valorConvertido;
    } else {
      print("Valor inválido (deve ser um número maior que zero).");
    }
  }
}