import 'Login.dart';
import 'Cadastros/cadastro.dart';
import 'Cadastros/CadastroComum/cadastroComum.dart';
import 'Cadastros/CadastroFornecedor/cadastroFornecedor.dart';
import 'Cadastros/CadastroOSC/cadastroOSC.dart';
import 'package:flutter/material.dart';


class AppW extends StatelessWidget{
  @override
  Widget build(BuildContext context) {  
    
      return MaterialApp(
        initialRoute: '/',
        routes: { 
          '/': (context) => login(),
          '/cadastro': (context) => cadastro(),
          '/cadastroComum': (context) => CadastroComun(),
          '/cadastroFornecedor': (context) => CadastroFornecedor(),
          '/cadastroOSC': (context) => CadastroOSC()
        }
      );    
      }
  }
