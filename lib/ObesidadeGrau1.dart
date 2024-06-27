import 'package:flutter/material.dart';



import 'package:flutter/material.dart';


class ObesidadeGrau1 extends StatefulWidget {
  const ObesidadeGrau1({super.key});

  @override
  State<ObesidadeGrau1> createState() => _ObesidadeGrau1State();
}

class _ObesidadeGrau1State extends State<ObesidadeGrau1> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/imagems/obesidade grau 1.JPG',width: 450,height: 400),
             Column(
               children: [
                 SizedBox(height: 10,),
                 Container(
                  color: Colors.green,
                  width: 250,
                   child: const Center(
                     child: Text(
                      'Obesidade Grau 1',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255), // Coloque a cor que você deseja aqui
                        fontWeight: FontWeight.bold,
                        fontSize: 20, // Opcional: ajuste o tamanho do texto
                      ),
                      
                                 ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Sinal de alerta! Chegou na hora de se cuidar, mesmo que seus exames sejam  normais. Vamos dar início a  mudanças  hoje! Cuide  de  sua alimentação. Você precisa iniciar um acompanhamento com nutricionista e/ou endocrinologista.'),
                 ),
               ],
             ),
          ],
        ),
      ),
    );
  }
}
