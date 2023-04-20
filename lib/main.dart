import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Dulcería Alegrías'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dulcería Alegrías'),
          backgroundColor: const Color(0xffb80303),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          elevation: 8,
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: const [
                Text(
                  "Ingresa los siguientes datos",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su ID",
                      labelText: "ID",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Colors.deepOrange,
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su nombre",
                      labelText: "Nombre",
                      prefixIcon: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.deepOrange,
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su email",
                      labelText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.deepOrange,
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su telefono",
                      labelText: "Telefono",
                      prefixIcon: Icon(
                        Icons.call,
                        color: Colors.deepOrange,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su direccion",
                      labelText: "Direccion",
                      prefixIcon: Icon(
                        Icons.add_location_rounded,
                        color: Colors.deepOrange,
                      )),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Ingrese su contraseña",
                      labelText: "Contraseña",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.deepOrange,
                      )),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Confirmar su contraseña",
                      labelText: "Confirmar",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.deepOrange,
                      )),
                ),
              ],
            )));
  }
}
