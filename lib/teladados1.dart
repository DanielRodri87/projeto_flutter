import 'package:flutter/material.dart';
import 'package:flutter_application_1/telaexpanded.dart';

class TelaDados1 extends StatelessWidget {
  const TelaDados1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 233, 233, 233),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 46, 91),
        title: const Text('Dados dos imóveis'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.historiasdecasa.com.br/wp-content/uploads/2021/09/capa-webstories-casa-iuri-westwing.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Card(
            color: const Color.fromARGB(255, 39, 46, 91).withOpacity(0.8),
            elevation: 90,
            margin: const EdgeInsets.all(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Imóvel'),
                  subtitle: Text('Valor diária: RS 100,00'),
                  iconColor: Color.fromARGB(255, 233, 233, 233),
                  textColor: Color.fromARGB(255, 233, 233, 233),
                ),
                const ListTile(
                  leading: Icon(Icons.location_on),
                  iconColor: Color.fromARGB(255, 233, 233, 233),
                  title: Text('Endereço: R. Florêncio Joaquim Rodrigues, 419'),
                  textColor: Color.fromARGB(255, 233, 233, 233),
                ),
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Telefone: (89) 994 5640-10'),
                  iconColor: Color.fromARGB(255, 233, 233, 233),
                  textColor: Color.fromARGB(255, 233, 233, 233),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Reservar'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('Cancelar'),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TelaExpanded()),
                        )
                      },
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
