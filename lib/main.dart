import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

Future main() async {
  await dotenv.load(fileName: "keys.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: const [
        // ChangeNotifierProvider(create: (_) => LocationViewModel()),
        // ChangeNotifierProvider(create: (_) => CityViewModel())
      ],
      child: MaterialApp(
        title: 'Unshelled court',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}