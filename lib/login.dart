import 'package:flutter/material.dart';
import 'Cadastros/cadastro.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login>{

  Widget _body(){
   return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
        children: [
          Container(
        height: 30,
        ),
          Container(
            child: Column(children: [
              ElevatedButton(
                child: Text(
                  "CADASTRAR",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 10,
                    padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Color.fromRGBO(73, 39, 196, 1)
                  ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed ('/cadastro');
                    },
                  )
                ]
              ),
            )           
          ],
        ),
      )
    );
  } 


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(  
          decoration: BoxDecoration(
            color: Colors.white
          ), 
        ),
          _body(),
        ],
      )
    );
  }
}