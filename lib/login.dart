import 'package:flutter/material.dart';
import 'Cadastros/cadastro.dart';
import 'widg.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login>{

  Widget fieldCuscuz(){
    return SizedBox.fromSize(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image.asset('assets/couscous.png'),
        ),
      ],
    ),
    );
  }

  Widget fieldEmail(){
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Joao123@gmail.com',
        suffixIcon: Icon(Icons.person_outline),
      ),
    );
  }
  Widget fieldSenhaLogin(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.blue.shade100,
        labelText: 'Senha',
        suffixIcon: Icon(Icons.lock_open),
      ),
    );
  }

  Widget fieldBottonLogin(){
    return ElevatedButton(
      child: Text(
        "LOGIN",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),

      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 16.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          primary: Color.fromRGBO(73, 39, 196, 1)
      ),
      onPressed: () {

      },
    );
  }

  Widget fieldBottonCadastroLogin(){
    return ElevatedButton(
      child: Text(
        "CADASTRAR",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),

      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 16.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          primary: Color.fromRGBO(73, 39, 196, 1)
      ),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed('/cadastro');
      },
    );
  }

  Widget fieldEsqueciSenha(){
    return TextButton(
      onPressed: () {
      },
      child: const Text('Esqueci a senha'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              fieldCuscuz(),
              Divider(height: 100,color: Colors.transparent),
              fieldEmail(),
              Divider(height: 20,color: Colors.transparent),
              fieldSenhaLogin(),
              Divider(height: 70,color: Colors.transparent),
              fieldBottonLogin(),
              Divider(height: 20,color: Colors.transparent),
              fieldBottonCadastroLogin(),
              Divider(height: 60,color: Colors.transparent),
              fieldEsqueciSenha()
            ],
          ),
        ),
      ),
    );
  }
}