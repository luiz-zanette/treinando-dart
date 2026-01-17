import 'dart:io';

void main() {
  List<String> meiosPagamentos = ['pix', 'boleto', 'cartao', 'paypal'];
  String? pagamento;

  pagamento = validaPagamento(pagamento, meiosPagamentos);

  print('Pagamento válido: $pagamento');
}

String? validaPagamento(String? pagamento, List<String> meiosPagamentos) {
  print('Digite o tipo de pagamento $meiosPagamentos:');
  pagamento = stdin.readLineSync()?.toLowerCase();
  if (meiosPagamentos.contains(pagamento)) {
    return pagamento;
  } else {
    print('Pagamento inválido. Tente novamente.');
    return validaPagamento(pagamento, meiosPagamentos);
  }
}