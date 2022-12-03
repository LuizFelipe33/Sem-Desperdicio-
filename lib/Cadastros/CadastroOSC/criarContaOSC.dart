import 'package:flutter/material.dart';


class CriarConta extends StatefulWidget {
  const CriarConta({Key? key}) : super(key: key);

  @override
  State<CriarConta> createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  Widget fieldEmail(){
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Joao123@gmail.com',
        suffixIcon: Icon(Icons.person_outline),
      ),
    );
  }
  Widget fieldSenha(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.blue.shade100,
        labelText: 'Senha',
        suffixIcon: Icon(Icons.lock_open),
      ),
    );
  }
  Widget fieldConfirmarSenha(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.blue.shade100,
        labelText: 'Confirmar Senha',
        suffixIcon: Icon(Icons.lock_open),
      ),
    );
  }

  Widget fieldBottonCadastro(){
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
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CriarConta())
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.arrow_back,
                color: Colors.black),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/cadastroOSC');
            },
          ),
        ),
        title: Text(
            'Cadastro',
            style: TextStyle(color: Colors.black)
        ),
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              fieldEmail(),
              Divider(height: 20,),
              fieldConfirmarSenha(),
              Divider(height: 20,),
              fieldConfirmarSenha(),
              Divider(height: 20,),
              fieldBottonCadastro(),
            ],
          ),
        ),
      ),
    );
  }
}
