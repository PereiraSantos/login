import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/homelogado.dart';
import 'package:fluttertoast/fluttertoast.dart'; 

class Login extends StatelessWidget {

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/logo.png')),
            Container(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;                        
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        password = text;                       
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Pasword', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        if (email == 'teste' &&
                            password == "teste") {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomeLogado()),
                          );
                        } else {
                          if(email == ""){
                            _mensagem("Campo email esta vazio");
                          }else if(password == ""){
                            _mensagem("Campo password esta vazio");
                          }else{
                            _mensagem("Campo email ou password invalida");
                          }
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text("Entrar", textAlign: TextAlign.center)),
                    )
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
    void _mensagem(String valor) {
    Fluttertoast.showToast(
        msg: valor,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 17.0);
  }
}
