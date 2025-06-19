import 'package:flutter/material.dart';
import 'lib/features/auth/login_screen.dart';
import 'lib/screens/dashboard_screen.dart';
import 'lib/screens/patient_list_screen.dart';
import 'lib/screens/role_selection_screen.dart';

void main() {
  runApp(const DiaCareApp());
}

class DiaCareApp extends StatelessWidget {
  const DiaCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiaCare Doctor',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const RoleSelectionScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/patients': (context) => const PatientListScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
