
import 'package:flutter/material.dart';
import 'package:flutter_application_1/telaexpanded.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Material(
            color: const Color.fromARGB(255, 17, 80, 95),
            elevation: 6,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // definir o tamanho do container
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaExpanded()
                    ),
                  ),
                },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.asset(
                    'assets/telainicialapp.png',
                      height: 400,
                      fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 180
                ),
                const Text(
                  "clique para entrar",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
