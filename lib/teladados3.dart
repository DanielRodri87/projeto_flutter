import 'package:flutter/material.dart';

class TelaDados3 extends StatelessWidget {
  const TelaDados3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 233, 233, 233),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 41, 50),
        title: const Text('Dados dos imóveis'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 17, 41, 50), 
                Color.fromARGB(255, 17, 80, 95), 
              ]
        ),
      ),
      child: SizedBox(
          child: Column(
            children: const [
              SizedBox(
                height: 70,
              ),
              Text(
                'Imóvel: Chácara',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  //TextAlign.right
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Valor diário: 450',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Enderço: Rua Fernando Cota',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Contato: (xx)xxxxx-xxxx',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
              ),
              
              Image(
                image: NetworkImage(
                  'https://www.elasviajando.com.br/wp-content/uploads/2021/06/hotel-com-vista-para-o-mar-no-rj-7-845x550.jpg'),
                  fit: BoxFit.cover,
                  width: 250,
                  height: 220,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

