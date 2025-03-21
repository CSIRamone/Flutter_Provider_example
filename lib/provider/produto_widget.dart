import 'package:flutter/material.dart';
import 'package:flutter_provider_tutorial/provider/produto_model.dart';
import 'package:provider/provider.dart';

class ProdutoWidget extends StatelessWidget {

  const ProdutoWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
        color: Colors.blueGrey,
        child: Text(context.read<ProdutoModel>().nome),
       );
  }
}