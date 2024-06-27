import 'package:flutter/material.dart';


class PesoNormal extends StatefulWidget {
  const PesoNormal({super.key});

  @override
  State<PesoNormal> createState() => _PesoNormalState();
}

class _PesoNormalState extends State<PesoNormal> {
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
                child: Image.asset('assets/imagems/peso normal.JPG',width: 400,height: 400),
              ),
             Column(
               children: [
                 SizedBox(height: 5,),
                 Container(
                  color: Colors.green,
                  width: 250,
                   child: const Center(
                     child: Text(
                      'Peso normal',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255), // Coloque a cor que você deseja aqui
                        fontWeight: FontWeight.bold,
                        fontSize: 20, // Opcional: ajuste o tamanho do texto
                      ),
                      
                                 ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Text('Que bom que você está com o peso normal! E o melhor jeito de continuar assim é mantendo um estilo de vida ativo e uma alimentação equilibrada.'),
               ],
             ),
          ],
        ),
      ),
    ),
   );
  }
}
