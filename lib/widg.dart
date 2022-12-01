import 'Login.dart';
import 'Cadastros/cadastro.dart';
import 'Cadastros/cadastroFornecedor.dart';
import 'Cadastros/cadastroOSC.dart';
import 'package:flutter/material.dart';

class AppW extends StatelessWidget{
  @override
  Widget build(BuildContext context) {  
    
      return MaterialApp(
        initialRoute: '/',
        routes: { 
          '/': (context) => login(),
          '/cadastro': (context) => cadastro(),
          '/cadastroFornecedor': (context) => cadastroFornecedor(),
          '/cadastroOSC': (context) => cadastroOSC(),
        }
      );    
      }
  }
