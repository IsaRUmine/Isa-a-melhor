import 'package:flutter/material.dart';
import 'package:rent_car_luiz/views/A_mais_pura_perfei%C3%A7%C3%A3o.dart';
import 'package:rent_car_luiz/widgets/BuildTextFieldCustom.dart';

class TelaEdicaoUser extends StatefulWidget {
   TelaEdicaoUser({super.key});

  @override
  State<TelaEdicaoUser> createState() => _TelaEdicaoUserState();
}

class _TelaEdicaoUserState extends State<TelaEdicaoUser> {
  TextEditingController controller_nome = TextEditingController();
  TextEditingController controller_email = TextEditingController();
  TextEditingController controller_phone = TextEditingController();
  TextEditingController controller_phone2 = TextEditingController();
  TextEditingController controller_rua = TextEditingController();
  TextEditingController controller_numero = TextEditingController();
  TextEditingController controller_bairro = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: (Colors.brown ),
        title: Center(child: Text("Meus dados")),
    
        leading: IconButton( icon:Icon( Icons.arrow_back), 
        onPressed: () { 
          _cliqueVoltar();
         },),
      ),
    body: Center(
      
      child: Column(
      
        children: [
          
          BuildTextFieldCustom(controlador: controller_nome, dica: "Nome:", isPesquisa: false, semIcone: true),

          BuildTextFieldCustom(controlador:controller_email , dica: "Email:", isPesquisa: false, semIcone:true),

          Row(
            children: [
              Expanded(child:BuildTextFieldCustom(controlador: controller_phone, dica: "Telefone 1:", isPesquisa: false, semIcone: true), ),
              SizedBox(width: 16,),
              Expanded(child: BuildTextFieldCustom(controlador: controller_phone2, dica: "Telefone 2:", isPesquisa: false, semIcone: true),)
            ],
          ),
          Row(
            children: [
              Expanded(child:BuildTextFieldCustom(controlador: controller_rua, dica: "Rua:", isPesquisa: false, semIcone: true),flex: 2, ),
              SizedBox(width: 20,),
              Expanded(child: BuildTextFieldCustom(controlador: controller_numero, dica: "Número:", isPesquisa: false, semIcone: true),flex: 1,),
              SizedBox(width: 15,)
            ],
          ),  
          BuildTextFieldCustom(controlador:controller_bairro , dica: "Bairro:", isPesquisa: false, semIcone:true),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(onPressed: () {}, child: Text("Cancelar" ,), ),
              FilledButton(onPressed: () {}, child: Text("Salvar dados"))
            ],
          )
        ],
        
      ),
    ),
    );
  }
  
  void _cliqueVoltar() {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => Telahome()));
    
  }
}