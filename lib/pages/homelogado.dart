import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/containers/logado.dart';
import 'package:login/pages/homepages.dart';

class HomeLogado extends StatefulWidget {
  @override
  _HomeLogadoState createState() => _HomeLogadoState();
}

class _HomeLogadoState extends State<HomeLogado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:  ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/images/foto.png')
              ),
              accountName: Text("Marciano"),
              accountEmail: Text("Marciano@hotmail.com")
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("inicio"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Sair"),
              onTap: (){
                Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePages()),
                        );
              },
            )
          ]),
      ),
      appBar: AppBar(
       
        title: Text("Logando"),
      ),
      body: Logado()
    );
  }
}
