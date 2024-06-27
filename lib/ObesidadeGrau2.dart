import 'package:flutter/material.dart';

class ObesidadeGrau2 extends StatefulWidget {
  const ObesidadeGrau2({super.key});

  @override
  State<ObesidadeGrau2> createState() => _ObesidadeGrau2State();
}

class _ObesidadeGrau2State extends State<ObesidadeGrau2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/imagems/obesidade grau 2.JPG',width: 450,height: 400),
           Column(
               children: [
                 SizedBox(height: 10,),
                 Container(
                  color: Colors.green,
                  width: 250,
                   child: const Center(
                     child: Text(
                      'Obesidade Grau 2',
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
                   child: Text('Mesmo que seus exames aparentem estar normais, é hora de se cuidar, iniciando mudanças no estilo de vida com o acompanhamento próximo de profissionais de saúde.'),
                 ),
               ],
             ),
          ],
        ),
      ),
    );
  }
}
