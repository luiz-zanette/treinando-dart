import 'dart:io';

void main() {
  List<String> arquivoSuportados = ["pdf", "docx", "png", "jpg"];
  
  String extensaoValida = obterExtensaoValida(arquivoSuportados);
  
  print('Sucesso! Você selecionou um arquivo: $extensaoValida');
}

String obterExtensaoValida(List<String> suportados) {
  while (true) {
    print('Digite a extensão do arquivo ${suportados.toString()}:');
    String? entrada = stdin.readLineSync()?.toLowerCase();

    if (entrada != null && suportados.contains(entrada)) {
      print('Arquivo válido: $entrada');
      return entrada;
    } else {
      print('Arquivo inválido. Tente novamente.');
      
    }
  }
}