import 'package:flutter/material.dart';
import 'package:flutter_provider_tutorial/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {

  const ProviderPage({ super.key });

   @override
   Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);
    
    // .read ele vai retornar uma instancia sem ficar escutando alteracoes
   // var user = context.read<UserModel>();

     // var imageAvatar = context.select<UserModel, String>((userModel) => userModel.imgAvatar);
    // var user = context.watch<UserModel>();
       return Scaffold(
           appBar: AppBar(title: const Text('Provider'),),
           body: Center(
             child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(user.imgAvatar),
                    radius: 60,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(user.name),
                      Text('(${user.birthDate})'),
                    ],
                  )
                ],
              ),
              ),
           ),
       );
  }
}