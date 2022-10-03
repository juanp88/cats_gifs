import 'package:cats_gif/ui/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Creamos un "provider", el cual almacenará un valor (aquí "Hello world").
// El usar un provider nos permitirá simular/sobrescribir el valor expuesto.
final helloWorldProvider = Provider((_) => 'Hello Cats');

void main() {
  runApp(
    // Para que los widgets puedan leer los providers, necesitamos envolver
    // toda la aplicación en un "ProviderScope".
    // Aquí es donde se almacenará el estado de nuestros providers.
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// Extienda de un ConsumerWidget (expuesto por Riverpod) en lugar de un StatelessWidget.
class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Cats',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const Home(),
    );
  }
}
