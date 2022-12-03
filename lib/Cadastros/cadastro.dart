import 'package:flutter/material.dart';

class cadastro extends StatefulWidget {
  @override
  _cadastroState createState() => _cadastroState();
}

class _cadastroState extends State<cadastro>{
  @override

  Widget fieldBottonCadastroComum(){
    return SizedBox.fromSize(
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox.fromSize(
                size: Size(140, 140),
                child: ClipOval(
                  child: Material(
                    //color: Color.fromRGBO(73, 39, 196, 1),
                    child: InkWell(
                      splashColor: Color.fromRGBO(73, 39, 196, 1),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/cadastroComum');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Usuário/PF",
                              style: TextStyle(color: Colors.black, fontSize: 15)
                          ),
                          Container(
                            child: Image.asset('pf.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget fieldBottonCadastroFornecedor(){
    return Flexible(
      flex: 2,
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox.fromSize(
                size: Size(140, 140),
                child: ClipOval(
                  child: Material(
                    //color: Color.fromRGBO(73, 39, 196, 1),
                    child: InkWell(
                      splashColor: Color.fromRGBO(73, 39, 196, 1),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/cadastroFornecedor');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('pj.png'),
                          ),
                          Text("Fornecedor/PJ",
                              style: TextStyle(color: Colors.black, fontSize: 15)
                          ),
                        ],
                      ),
                    ),
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget fieldBottonCadastroOSC(){
    return Flexible(
      flex: 2,
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox.fromSize(
                size: Size(140, 140),
                child: ClipOval(
                  child: Material(
                    //color: Color.fromRGBO(73, 39, 196, 1),
                    child: InkWell(
                      splashColor: Color.fromRGBO(73, 39, 196, 1),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/cadastroOSC');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('ong.png'),
                          ),
                          Text("ONG",
                              style: TextStyle(color: Colors.black, fontSize: 15)
                          ),
                        ],
                      ),
                    ),
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget barraTitulo(){
    return ListTile(
      title: Text("Selecione o tipo de conta que deseja cadastrar",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
      ),
    );
  }

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
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ),
          title: Text(
              'Tipo de conta',
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
                barraTitulo(),
                SizedBox(width: 80,),
                Divider(height: 100, color: Colors.transparent),
                fieldBottonCadastroComum(),
                Divider(height: 50, color: Colors.transparent),
                Row(
                  children: [
                    fieldBottonCadastroFornecedor(),
                    SizedBox(width: 80,),
                    fieldBottonCadastroOSC()
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
