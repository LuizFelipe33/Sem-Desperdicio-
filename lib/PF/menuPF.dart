import 'package:flutter/material.dart';

class MenuComum extends StatefulWidget {
  const MenuComum ({Key? key}) : super(key: key);

  @override
  State<MenuComum> createState() => _MenuComumState();
}

class _MenuComumState extends State<MenuComum> {
int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  Widget fieldEmail(){
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Joao123@gmail.com',
        suffixIcon: Icon(Icons.person_outline),
      ),
    );
  }
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Carrinho',
      style: optionStyle,
    ),
    Text(
      'Index 2: Doação',
      style: optionStyle,
    ),
    Text(
      'Index 3: Mapa',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 214, 214),
        elevation: 1,     
        leading:IconButton(icon: const Icon(Icons.account_circle_rounded),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              }),
        actions: [
            IconButton(icon: const Icon(Icons.account_circle_rounded),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
            }),
        ],   
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              fieldEmail(),
              Divider(height: 20,),
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 110, 25, 180),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
            backgroundColor: Color.fromARGB(255, 125, 42, 192),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Doação',
            backgroundColor: Color.fromARGB(255, 125, 42, 192),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Mapa',
            backgroundColor: Color.fromARGB(255, 102, 35, 157),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}