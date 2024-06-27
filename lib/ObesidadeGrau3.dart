

import 'package:flutter/material.dart';


class ObesidadeGrau3 extends StatefulWidget {
  const ObesidadeGrau3({super.key});

  @override
  State<ObesidadeGrau3> createState() => _ObesidadeGrau3State();
}

class _ObesidadeGrau3State extends State<ObesidadeGrau3> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/imagems/obesidade grau 32.JPG',width: 450,height: 400),
            Column(
               children: [
                 SizedBox(height: 10,),
                 Container(
                  color: Colors.green,
                  width: 250,
                   child: const Center(
                     child: Text(
                      'Obesidade Grau 3',
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
                   child: Text('Aqui o sinal é vermelho, com forte probabilidade de já existirem doenças muito graves associadas. O tratamento deve ser ainda mais urgente.'),
                 ),
               ],
             ),
          ],
        ),
      ),
    );
  }
}
