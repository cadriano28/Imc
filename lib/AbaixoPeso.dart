import 'package:flutter/material.dart';


class AbaixoPeso extends StatefulWidget {
  const AbaixoPeso({super.key});

  @override
  State<AbaixoPeso> createState() => _AbaixoPesoState();
}

class _AbaixoPesoState extends State<AbaixoPeso> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/imagems/abaixo do peso.JPG',width: 450,height: 400),
              ),
             Column(
               children: [
                 SizedBox(height: 10,),
                 Container(
                  color: Colors.green,
                  width: 250,
                   child: const Center(
                     child: Text(
                      'Abaixo do peso',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255), // Coloque a cor que você deseja aqui
                        fontWeight: FontWeight.bold,
                        fontSize: 20, // Opcional: ajuste o tamanho do texto
                      ),
                      
                                 ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Text('Procure um médico. Algumas pessoas têm um baixo peso por características do seu organismo e tudo bem. Outras podem estar enfrentando problemas, como a desnutrição. É preciso saber qual é o caso.'),
               ],
             ),
          ],
        ),
      ),
    ),
   );
  }
}
