void main() {
  // Declaração das variáveis
  String primeiroNome = "Ana";
  String sobrenome = "Silva";

  // Usando concatenação
  String nomeCompletoConcatenado = primeiroNome + " " + sobrenome;
  print("Usando concatenação: $nomeCompletoConcatenado");

  // Usando interpolação de string
  String nomeCompletoInterpolado = "$primeiroNome $sobrenome";
  print("Usando interpolação: $nomeCompletoInterpolado");
}
