import 'package:flutter/material.dart';

import 'admission_screen.dart';

class ParentLoginScreen extends StatelessWidget {
  const ParentLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ParentLoginView();
  }
}

class _ParentLoginView extends StatelessWidget {
  const _ParentLoginView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 38, color: const Color(0xFF1306F2)),
              const SizedBox(height: 42),
              Image.asset(
                'assets/cspc_logo.png.png',
                width: 140,
                height: 140,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 18),
              const Text(
                'Camarines Sur Polytechnic Colleges',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 4),
              const Text(
                'Nabua, Camarines Sur',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 22),
              _filledButton(
                label: 'Parent',
                color: const Color(0xFF2F11E8),
                width: 130,
                height: 28,
                radius: 14,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: 160,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'User ID:',
                    style: TextStyle(
                      fontSize: 24 / 2,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 160,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: 160,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password:',
                    style: TextStyle(
                      fontSize: 24 / 2,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 160,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              _filledButton(
                label: 'Login',
                color: const Color(0xFF4183D4),
                width: 140,
                height: 34,
                radius: 10,
                onPressed: () {},
              ),
              const SizedBox(height: 8),
              _filledButton(
                label: 'Forget Password',
                color: const Color(0xFF8D8D8D),
                width: 140,
                height: 34,
                radius: 10,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              _filledButton(
                label: 'Apply for Admission',
                color: const Color(0xFF4C75E8),
                width: 190,
                height: 34,
                radius: 10,
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
    );
  }

  Widget _filledButton({
    required String label,
    required Color color,
    required double width,
    required double height,
    required double radius,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18 / 2 * 1.8,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
