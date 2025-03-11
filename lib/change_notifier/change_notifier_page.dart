import 'package:flutter/material.dart';
import 'package:flutter_provider_tutorial/change_notifier/provider_controller.dart';
import 'package:provider/provider.dart';

class ChangeNotifierPage extends StatefulWidget {

  const ChangeNotifierPage({ super.key });

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {

@override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(Duration(seconds: 2));   
      // ignore: use_build_context_synchronously
      context.read<ProviderController>().alterarDados();
      
    });
  }

   @override
   Widget build(BuildContext context) {
    var controller = Provider.of<ProviderController>(context);
       return Scaffold(
           appBar: AppBar(title: const Text('Change Notifier'),),
           body: Center(
               child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Selector<ProviderController, String>(
                      selector: (_, controller) => controller.imgAvatar,
                      builder: (_, imgAvatar, __) {
                        return CircleAvatar(
                        backgroundImage: NetworkImage(imgAvatar),
                        radius: 60,
                        );
                      },
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Selector<ProviderController, String>(
                          selector: (_, controller) => controller.name,
                          builder: (_, name, __) {
                            return Text(name);
                          },
                        ),
                        Selector<ProviderController, String>(
                          selector: (_, controller) => controller.birthDate,
                          builder: (_, birthDate, __) {
                            return Text('($birthDate)');
                          },
                        ),   
                      ],
                    ),
                    ElevatedButton(onPressed: () {
                      // ignore: use_build_context_synchronously
                      context.read<ProviderController>().alterarNome();
                    }, child: const Text('Alterar Nome'))
                  ],
                ),
                ),
             ),
       );
  }
}