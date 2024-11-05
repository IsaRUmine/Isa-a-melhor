import 'package:flutter/material.dart';
import 'package:rent_car_luiz/widgets/BuildTextFieldCustom.dart';

class Telaclientes extends StatefulWidget {
  const Telaclientes({super.key});

  @override
  State<Telaclientes> createState() => _TelaclientesState();
}

class _TelaclientesState extends State<Telaclientes> {
   TextEditingController controller_busca = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text("Clientes",         
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
                ),
                ),
        )
        
    ),
    body: Column(
      children: [
        Row(
          children: [Expanded(child: BuildTextFieldCustom(controlador: controller_busca, dica: "Busque por CPF, nome..", isPesquisa: true, semIcone: true), flex: 6,),
          Expanded(child: Icon(Icons.wifi))
          ],
        ),
      
        
      ],
      
    ),
    );
    
  }
  
}