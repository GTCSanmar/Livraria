void main() {
  print('Digite os CPFs (11 dígitos), um por linha. Ctrl+D para finalizar:');
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    final cpf = line.trim();
    if (cpf.isEmpty) continue;
    try {
      print(formatCpf(cpf));
    } catch (e) {
      print('Erro no CPF "$cpf": $e');
    }
  }
}
