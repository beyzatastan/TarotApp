
import 'package:cardsapp/screens/OnboardingPage.dart';
import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}
//control shift R ile bunu convert to stateful yaptım
class MyApp extends StatefulWidget {
const MyApp({super.key});

@override
State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool isChecked = false;

@override
//set state state i güncellemeke için build fonk u tekrar çağırır her zaman bu yüzden
//isChecked ı build fonk un dışına yazdık ki hep false olarak ayarlanmasn
Widget build(BuildContext context) {
return const MaterialApp(
debugShowCheckedModeBanner: false, home: OnboardingPage());
}
} 
