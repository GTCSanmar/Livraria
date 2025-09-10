import 'dart:io';
import '../lib/email_utils.dart';

void main() {
  // Exemplo: ler emails fixos (você pode substituir por stdin se quiser)
  final emails = [
    'alice@example.com',
    'bob@dom.com',
    'charlie@test.org',
  ];

  for (var email in emails) {
    print(extractLogin(email));
  }
}
