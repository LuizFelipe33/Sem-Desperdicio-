import 'dart:ui';
import 'package:flutter/material.dart';
import 'criarContaFornecedor.dart';


class CadastroFornecedor  extends StatefulWidget {
  const CadastroFornecedor ({Key? key}) : super(key: key);

  @override
  State<CadastroFornecedor > createState() => _CadastroFornecedorState();
}

class _CadastroFornecedorState extends State<CadastroFornecedor > {

  Widget fieldName(){
    return ListTile(
      title: Text("Nome",style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: TextFormField(
        decoration: InputDecoration(
          hintText: 'Maria Silva*',
          filled: true,
          fillColor: Colors.grey.shade300,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none
          ),
        ),
      ),
    );
  }

  Widget fieldCPF(){
    return ListTile(
      title: Text("CNPJ",
          style: const TextStyle(fontWeight: FontWeight.bold)
      ),
      subtitle: TextFormField(
        decoration: InputDecoration(
          hintText: 'XX.XXX.XXX/XXXX-XX',
          filled: true,
          fillColor: Colors.grey.shade300,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none
          ),
        ),
      ),
    );
  }

  Widget fieldCEP(){
    return Flexible(
      flex: 2,
      child: ListTile(
        title: Text('CEP',
            style: const TextStyle(fontWeight: FontWeight.bold)
        ),
        subtitle: TextFormField(
          decoration: InputDecoration(
            hintText: 'XXXXX-XXX',
            filled: true,
            fillColor: Colors.grey.shade300,

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
            ),

          ),
        ),),
    );
  }

  Widget fieldEstado(){
    return Flexible(
      flex: 1,
      child:ListTile(
        title: Text('Estado',
            style: const TextStyle(fontWeight: FontWeight.bold)
        ),
        subtitle:  TextFormField(
          decoration:InputDecoration(
            hintText: 'PE*',
            filled: true,
            fillColor: Colors.grey.shade300,

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
            ),
          ),
        ),),
    );
  }

  Widget fieldCidade(){
    return Flexible(
      flex: 2,
      child: ListTile(
        title: Text('Cidade',
            style: const TextStyle(fontWeight: FontWeight.bold)
        ),
        subtitle: TextFormField(
          decoration: InputDecoration(
            hintText: 'Recife',
            filled: true,
            fillColor: Colors.grey.shade300,

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
            ),

          ),
        ),),
    );
  }

  Widget fieldNumero(){
    return Flexible(
      flex: 1,
      child:ListTile(
        title: Text('Número',
            style: const TextStyle(fontWeight: FontWeight.bold)
        ),
        subtitle:  TextFormField(
          decoration:InputDecoration(
            hintText: 'Nº',
            filled: true,
            fillColor: Colors.grey.shade300,

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
            ),
          ),
        ),),
    );
  }

  Widget fieldTelefone(){
    return Flexible(
      flex: 2,
      child: ListTile(
        title: Text('Telefone',
            style: const TextStyle(fontWeight: FontWeight.bold)
        ),
        subtitle: TextFormField(
          decoration: InputDecoration(
            hintText: '(XX)X XXXX-XXXX',
            filled: true,
            fillColor: Colors.grey.shade300,

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
            ),

          ),
        ),),
    );
  }

  Widget fieldImagem(){
    return Flexible(
      flex: 1,
      child: ElevatedButton.icon(
          icon: Icon(Icons.add_a_photo),
          label: Text('IMG',style: TextStyle(color: Colors.grey.shade600, fontSize: 10)),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              primary: Colors.grey.shade300
          ),
          onPressed: (){
            print("Você está escolhendo uma foto");
          }
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
              Navigator.of(context).pushReplacementNamed('/cadastro');
            },
          ),
        ),
        title: Text(
            'Cadastro Fornecedor',
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
              fieldName(),
              SizedBox(width: 5,),
              fieldCPF(),
              SizedBox(width: 5,),
              Row(
                children: [
                  fieldCEP(),
                  SizedBox(
                    width: 5,
                  ),
                  fieldEstado(),
                ],
              ),
              Row(
                children: [
                  fieldCidade(),
                  SizedBox(
                    width: 5,
                  ),
                  fieldNumero(),
                ],
              ),
              Row(
                children: [
                  fieldTelefone(),
                  SizedBox(
                    width: 5,
                  ),
                  fieldImagem(),
                ],
              ),
              SizedBox(height: 20,),
              fieldBottonCadastro(),
            ],
          ),
        ),
      ),
    );
  }
}
