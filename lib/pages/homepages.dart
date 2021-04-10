import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/containers/telalogin.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset('assets/images/fundo.jpg', fit: BoxFit.cover)
            ),
            Container(color: Colors.black.withOpacity(0.3)),
            _body(),
          ]
        )
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Login()
    );
  }
}
