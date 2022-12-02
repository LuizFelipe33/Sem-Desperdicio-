import 'package:flutter/material.dart';
import 'Cadastros/cadastro.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.fromLTRB(0, 35, 0, 35),
                child: Image.asset('assets/couscous.png')
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.person),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.lock_open),
                  labelText: 'Senha',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                  },
                  style: TextButton.styleFrom(
                    // shape: ,
                    backgroundColor: Color.fromARGB(255, 73, 39, 196),
                  ),
                )
            ),Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Cadastro'),
                  onPressed: () {
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 73, 39, 196)
                  ),
                )
            ),
            TextButton(
              onPressed: () {
              },
              child: const Text('Esqueci a senha'),
            ),
          ],
        ));
  }
}