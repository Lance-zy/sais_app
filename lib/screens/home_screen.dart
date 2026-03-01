import 'package:flutter/material.dart';

import 'admission_screen.dart';
import 'administrator_login_screen.dart';
import 'instructor_login_screen.dart';
import 'parent_login_screen.dart';
import 'student_login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: const Color(0xFF0000FF),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Text(
              'SIAS Online 3.7.2.16',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/cspc_logo.png.png',
                        width: 180,
                        height: 180,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Text(
                            'Image not found: assets/cspc_logo.png.png',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 39, 0, 236),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Camarines Sur Polytechnic Colleges',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Nabua, Camarines Sur',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, color: Colors.black87),
                    ),
                    const SizedBox(height: 40),
                    _buildButton(
                      context,
                      'Administrator',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AdministratorLoginScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildButton(
                      context,
                      'Instructor',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InstructorLoginScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildButton(
                      context,
                      'Student',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentLoginScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildButton(
                      context,
                      'Parent',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ParentLoginScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildButton(
                      context,
                      'Apply for Admission',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdmissionScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(
    BuildContext context,
    String label, {
    VoidCallback? onPressed,
  }) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0000FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
