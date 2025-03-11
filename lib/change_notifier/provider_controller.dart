
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier{
  String name = 'Back, Juliana';
  String imgAvatar = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiWICsQGv8cfoL9V6jGdIIC0TYJCI_c4sQDg&s';
  String birthDate = '11/14/1983';

  void alterarDados() {
    name = 'Juliana Back';
    imgAvatar = 
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Q3PH4ieR1dm3vWndaAGarfcSPgGbElPFu0Bk-t8yLr4oEb-nAt-cUguhROtPRmFlaYU&usqp=CAU';
    birthDate = '14/11/1983';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Juliana Back Inacio';
    imgAvatar = 
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Q3PH4ieR1dm3vWndaAGarfcSPgGbElPFu0Bk-t8yLr4oEb-nAt-cUguhROtPRmFlaYU&usqp=CAU';
    birthDate = '14/11/1983';
    notifyListeners();
  }
  
}