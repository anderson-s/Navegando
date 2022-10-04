import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const Home(),
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(primarySwatch: Colors.orange),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Tela Principal",
          style: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(20),
            ),
          ),
          onPressed: () {
            Navigator.push(context,  MaterialPageRoute(builder: (context) => const Secundaria()));
          },
          child: const Text("Ir para a segunda tela"),
        ),
      ),
    );
  }
}

class Secundaria extends StatefulWidget {
  const Secundaria({Key? key}) : super(key: key);

  @override
  State<Secundaria> createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Esta é a segunda página"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Text("Salve salve!!"),
      ),
    );
  }
}
