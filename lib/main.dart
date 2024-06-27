import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:appimc/AbaixoPeso.dart';
import 'package:appimc/ObesidadeGrau1.dart';
import 'package:appimc/ObesidadeGrau2.dart';
import 'package:appimc/ObesidadeGrau3.dart';
import 'package:appimc/PesoNormal.dart';
import 'package:appimc/sobrepeso.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset("assets/imagems/IMC1.JPG"),
      nextScreen: const MyHomePage(title: 'Calculando o IMC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  double _peso = 0;
  double _altura = 0;
  double resultado = 0;
  String imc= "";

  void _incrementCounter() {

    setState(() {
       resultado = _peso / (_altura * _altura);
        if(resultado < 18.5){
          imc = 'abaixoPeso';
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AbaixoPeso()));
          
        
        }else if(resultado <=24.9){
          imc = "PesoNormal";
          Navigator.push(context,MaterialPageRoute(builder:(context)=> PesoNormal()));
        }             
         
                       
         else if(resultado <=29.9){
          imc = "SobrePeso";
          Navigator.push(context,MaterialPageRoute(builder:(context)=> SobrePeso()));
        }  

         else if(resultado <=34.9){
          imc = "ObesidadeGrau1";
          Navigator.push(context,MaterialPageRoute(builder:(context)=> ObesidadeGrau1()));
        }  

         else if(resultado <=39.9){
          imc = "ObesidadeGrau2";
          Navigator.push(context,MaterialPageRoute(builder:(context)=> ObesidadeGrau2()));
        }  

         else if(resultado > 40.0){
          imc = "ObesidadeGrau3";
          Navigator.push(context,MaterialPageRoute(builder:(context)=> ObesidadeGrau3()));
        }  


    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 400,
              height: 600,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 400,
                      height: 300,
                      child: Image.asset('assets/imagems/IMC.JPG'),
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _peso = double.parse(value);
                          });
                        },
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Peso',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() => _altura = double.parse(value));
                        },
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Altura',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter,
                      child: Text('CALCULAR'),
                    ),
                    Text("${resultado.toStringAsFixed(2)}")
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
