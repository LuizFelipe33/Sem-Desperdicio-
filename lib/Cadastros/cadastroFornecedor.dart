import 'package:flutter/material.dart';

class cadastroFornecedor extends StatefulWidget {
  @override
  _cadastroFornecedorState createState() => _cadastroFornecedorState();
}

class _cadastroFornecedorState extends State<cadastroFornecedor>{
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
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Color.fromRGBO(223, 128, 33, 1), size: 30,),
                  iconSize: 48,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed ('/');
                  },),],),
           
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
