import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE8C4A0), // Peach/tan
              Color(0xFFF5D5C8), // Light peach
              Color(0xFFE8B8B8), // Pink
              Color(0xFFB8D8D8), // Light cyan
              Color(0xFF7AB8B8), // Teal
            ],
            stops: [0.0, 0.25, 0.5, 0.75, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top spacer
              const Spacer(flex: 2),
              
              // Hand icon
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.back_hand_outlined,
                  size: 64,
                  color: Color(0xFF4A5A6A),
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Title
              const Text(
                'Gesturely',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D3E50),
                  letterSpacing: 0.5,
                ),
              ),
              
              const SizedBox(height: 12),
              
              // Subtitle
              const Text(
                'Learn ASL with confidence',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF5A6A7A),
                  fontWeight: FontWeight.w400,
                ),
              ),
              
              const SizedBox(height: 50),
              
              // Page indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(isActive: true),
                  const SizedBox(width: 8),
                  _buildDot(isActive: false),
                  const SizedBox(width: 8),
                  _buildDot(isActive: false),
                ],
              ),
              
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 10 : 8,
      height: isActive ? 10 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive 
            ? Color(0xFF4A5A6A) 
            : Color(0xFF4A5A6A).withOpacity(0.3),
      ),
    );
  }
}