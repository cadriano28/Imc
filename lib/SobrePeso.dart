

import 'package:flutter/material.dart';


class SobrePeso extends StatefulWidget {
  const SobrePeso({super.key});

  @override
  State<SobrePeso> createState() => _SobrePesoState();
}

class _SobrePesoState extends State<SobrePeso> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/imagems/sobrepeso1.JPG',width: 400,height: 400),
            Column(
               children: [
                 SizedBox(height: 8,),
                 Container(
                  color: Colors.green,
                  width: 250,
                   child: const Center(
                     child: Text(
                      'SobrePeso',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255), // Coloque a cor que você deseja aqui
                        fontWeight: FontWeight.bold,
                        fontSize: 20, // Opcional: ajuste o tamanho do texto
                      ),
                      
                                 ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Text('          Ele é, na verdade, uma pré-obesidade e muitas pessoas nessa faixa já apresentam doenças associadas, como diabetes e hipertensão. Importante rever  hábitos  e  buscar ajuda antes de, por uma série de fatores, entrar  na faixa da obesidade pra valer.'),
               ],
             ),
          ],
        ),
      ),
    );
  }
}
