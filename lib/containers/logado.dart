
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
      
      child: Title(color: Colors.white, child: Text("Logado")),
    );
  }
}