import 'package:flutter/material.dart';
import 'package:flutter_provider_tutorial/change_notifier/change_notifier_page.dart';
import 'package:flutter_provider_tutorial/change_notifier/provider_controller.dart';
import 'package:flutter_provider_tutorial/provider/provider_page.dart';
import 'package:flutter_provider_tutorial/provider/user_model.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
        create: (_){
          return UserModel(
            name: 'Juliana Back', 
            imgAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiWICsQGv8cfoL9V6jGdIIC0TYJCI_c4sQDg&s', 
            birthDate: '14/11/1983');
        },
      ), 
      ChangeNotifierProvider(
        create: (_) => ProviderController(),
        ),      
    ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          routes: {
            '/provider': (_) => const ProviderPage(),
            '/changenotifier': (_) => const ChangeNotifierPage(),
          },
          home: Builder(
            builder: (context) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pushNamed('/provider');
                      }, child: Text('Provider')),
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pushNamed('/changenotifier');
                      }, child: Text('Change Notifier')),
                    ],
                  ),
                ),
              );
            } ,
        )),
      );
  }
}
