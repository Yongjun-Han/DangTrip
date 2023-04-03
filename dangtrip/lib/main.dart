import 'package:dangtrip/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
  // ApiService().getTodaysToons();
}

// Future<void> main() async {
//   bool data = await fetchData();
//   print(data);

//   runApp(MyApp());
// }

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Pretendard'),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const onBoard(),
    );
  }
}

// Future<bool> fetchData() async {
//   bool data = false;

//   // Change to API call
//   await Future.delayed(Duration(seconds: 3), () {
//     data = true;
//   });

//   return data;
// }
