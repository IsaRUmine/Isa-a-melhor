import 'package:flutter/material.dart';
import 'package:rent_car_luiz/views/TelaClientes.dart';
import 'package:rent_car_luiz/views/TelaEdicaoUser.dart';

class Telahome extends StatefulWidget {
  const Telahome({super.key});

  @override
  State<Telahome> createState() => _TelahomeState();
}

class _TelahomeState extends State<Telahome> {
  TextEditingController controlePesquisaCarro = TextEditingController();
  
  String campoFinal = "";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        leading: Icon(Icons.home,
        color: Colors.white,
        size: 35,
        ),
        title: const Text("", style: TextStyle(
          color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 121, 85, 72),
        actions: [
        IconButton( icon: const Icon(Icons.account_circle_rounded), 
          onPressed: () { _openEditUser(context);}
        ),
      ]
      
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: 
            _buildPesquisa(controlePesquisaCarro, "Busque por marca, modelo.. "),
          ),
          _buildLinhaVerMais(),
          
          _buildTitulo("Veículo em destaque: "),

          _buildImagem(),

          _buildTitulo("Ultimos alugueis: "),

          _buildCard("Letícia Santos" , "Devolução em 3 dias" ,"Ford Fiesta"),

          _buildCard("Emylle Vasconcelos" , "Devolução em 5 dias" ,"Fiat"),

          _buildCard("Danilio Neto", "Devolução em 7 dias" ,"Ferrari"),

          FilledButton(onPressed: () {_openCliente(context);}, child: Text("Clientes"))

        
        ],
        
      ),
      
    );
  
  }

  Card _buildCard(String account, String devolucao, String Carro) {
    return Card(
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.account_circle_rounded),
            Text(account , ),
            Column(
              children: [
                Row(

                  children: [
                    Text(Carro),
                    Icon(Icons.search , size: 17,)
                  ],
                ),
                Text(devolucao),
                
              ],
            )
           
            ]
            ,
          
        )

        );
  }

  IconButton _iconUserAccount() {
    return IconButton(
          icon: Icon(Icons.account_circle_rounded), iconSize: 35,
          onPressed: () {},
          color: Colors.white,
          );
  }

  Container _buildImagem() {
    return Container(
          
          decoration:
           BoxDecoration(color: Colors.brown[100],
            
            borderRadius: BorderRadius.circular( 30),
            border: Border.all(
              color: (const Color.fromARGB(255, 211, 201,200)),
            width: 5
            )
          ),
          child: Padding(
            
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                
                child: Image.asset("imagens/cr.png",
                width:450,
                fit: BoxFit.fitHeight,
                  ),
              ),
            ),
            
          ),
        );
  }

          
  Widget _buildTitulo(String texto) {
    return _buildTextoNegrito(texto);
  }

  Container _buildTextoNegrito(String texto) {
    return Container(
        
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(texto,
          style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          
            
          ),),
        ),
      );
  }

  Widget _buildLinhaVerMais() {
    return const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.remove_red_eye, size: 20,),
            ),
            Text("Ver Mais"),

          ]
        );
  }

  Widget _buildPesquisa(TextEditingController controller, String dica) {
    return Container(
         
          height: 50,
          width: 800,
          
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: controlePesquisaCarro,
              decoration: InputDecoration(hintText: dica,
               prefixIcon: Icon(Icons.search),
                fillColor:Colors.white,
                filled: true,
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )),
            ),
          ),
          
          );
  }
  
        
  void _cliqueDoBotao() {
    setState(() {
      campoFinal = controlePesquisaCarro.text;
    });
    
  }

 void _openEditUser(BuildContext context) {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEdicaoUser()));
  }
  void _openCliente(BuildContext context) {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Telaclientes()));
  }
}
