import 'package:flutter/material.dart';

void main() {
  runApp(LivroApp());
}

class LivroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Livros',
      home: LivroHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Livro {
  final String titulo;
  final String autor;

  Livro({required this.titulo, required this.autor});
}

class LivroHomePage extends StatefulWidget {
  @override
  _LivroHomePageState createState() => _LivroHomePageState();
}

class _LivroHomePageState extends State<LivroHomePage> {
  final _tituloController = TextEditingController();
  final _autorController = TextEditingController();

  List<Livro> _livros = [];

  void _adicionarLivro() {
    final titulo = _tituloController.text.trim();
    final autor = _autorController.text.trim();

    if (titulo.isNotEmpty && autor.isNotEmpty) {
      setState(() {
        _livros.add(Livro(titulo: titulo, autor: autor));
        _tituloController.clear();
        _autorController.clear();
      });
    }
  }

  @override
  void dispose() {
    _tituloController.dispose();
    _autorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de Livros')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _tituloController,
              decoration: InputDecoration(labelText: 'Título do Livro'),
            ),
            TextField(
              controller: _autorController,
              decoration: InputDecoration(labelText: 'Autor do Livro'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _adicionarLivro,
              child: Text('Adicionar Livro'),
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: _livros.length,
                itemBuilder: (context, index) {
                  final livro = _livros[index];
                  return ListTile(
                    title: Text(livro.titulo),
                    subtitle: Text(livro.autor),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
