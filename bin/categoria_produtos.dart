import 'dart:io';

void main() {
  List<String> categorias = ['eletronicos', 'alimentos', 'vestuario', 'livros'];
  String? entradaCategoria;

  entradaCategoria = validaCategoria(entradaCategoria, categorias);

  print('Categoria válida: $entradaCategoria');
}

String? validaCategoria(String? categoria, List<String> categorias) {
  print('Digite a categoria do produto ${categorias.toString()}:');
  categoria = stdin.readLineSync()?.toLowerCase();
  if (categorias.contains(categoria)) {
    return categoria;
  } else {
    print('Categoria inválida. Tente novamente.');
    return validaCategoria(categoria, categorias);
  }
}