import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hava/pages/sidedrawer/about/developers.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFEADDFF),
              Color(0xFFF3EDF7),
            ],
          ),
        ),
        child: Column(
          children: [
            // App bar with back button - with animation
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -1),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: ModalRoute.of(context)!.animation!,
                curve: Curves.easeOutQuart,
              )),
              child: FadeTransition(
                opacity: ModalRoute.of(context)!.animation!,
                child: Container(
                  padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFD0BCFF),
                        Color(0xFFEADDFF),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Color(0xFF1C1B1F)),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1C1B1F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // App logo in the center with animation
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ScaleTransition(
                      scale: CurvedAnimation(
                        parent: ModalRoute.of(context)!.animation!,
                        curve: Curves.elasticOut,
                      ),
                      child: Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFEADDFF),
                              Color(0xFFF3EDF7),
                            ],
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.asset(
                            'assets/images/HAVA APP ICON.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.5),
                        end: Offset.zero,
                      ).animate(CurvedAnimation(
                        parent: ModalRoute.of(context)!.animation!,
                        curve: Curves.easeOutBack,
                      )),
                      child: FadeTransition(
                        opacity: ModalRoute.of(context)!.animation!,
                        child: const Text(
                          'Hava Weather',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1C1B1F),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.5),
                        end: Offset.zero,
                      ).animate(CurvedAnimation(
                        parent: ModalRoute.of(context)!.animation!,
                        curve: Curves.easeOutBack,
                        reverseCurve: Curves.easeInBack,
                      )),
                      child: FadeTransition(
                        opacity: ModalRoute.of(context)!.animation!,
                        child: Text(
                          'Version 1.0.1',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.5),
                        end: Offset.zero,
                      ).animate(CurvedAnimation(
                        parent: ModalRoute.of(context)!.animation!,
                        curve: Interval(0.4, 1.0, curve: Curves.easeOutBack),
                      )),
                      child: FadeTransition(
                        opacity: ModalRoute.of(context)!.animation!,
                        child: Text(
                          'released 2 April 2025',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Bottom options with animation
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: ModalRoute.of(context)!.animation!,
                curve: Interval(0.5, 1.0, curve: Curves.easeOutQuart),
              )),
              child: FadeTransition(
                opacity: ModalRoute.of(context)!.animation!,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFF3EDF7),
                        Color(0xFFEADDFF),
                      ],
                    ),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 10,
                        offset: Offset(0, -4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            _buildOptionButton(
                              'About App',
                              Icons.info_outline,
                              () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => const AboutAppScreen(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: SlideTransition(
                                        position: Tween<Offset>(
                                          begin: const Offset(0, 0.1),
                                          end: Offset.zero,
                                        ).animate(animation),
                                        child: child,
                                      ),
                                    );
                                  },
                                  transitionDuration: const Duration(milliseconds: 400),
                                ),
                              ),
                            ),
                            const Divider(height: 1, thickness: 1, color: Color(0xFFE8E0E5)),
                            _buildOptionButton(
                              'Developer Details',
                              Icons.people_outline,
                              () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => const DeveloperDetailsScreen(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: SlideTransition(
                                        position: Tween<Offset>(
                                          begin: const Offset(0, 0.1),
                                          end: Offset.zero,
                                        ).animate(animation),
                                        child: child,
                                      ),
                                    );
                                  },
                                  transitionDuration: const Duration(milliseconds: 400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        '© 2024-2025 Hava Weather Team',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(String text, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF6750A4), size: 24),
            const SizedBox(width: 16),
            Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1C1B1F),
              ),
            ),
            const Spacer(),
            const Icon(Icons.chevron_right, color: Color(0xFF6750A4), size: 24),
          ],
        ),
      ),
    );
  }
}

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFEADDFF),
              Color(0xFFF3EDF7),
            ],
          ),
        ),
        child: Column(
          children: [
            // Modernized app bar with properly spaced title
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -1),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: ModalRoute.of(context)!.animation!,
                curve: Curves.easeOutQuart,
              )),
              child: FadeTransition(
                opacity: ModalRoute.of(context)!.animation!,
                child: Container(
                  padding: const EdgeInsets.only(top: 60, bottom: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFD0BCFF),
                        Color(0xFFEADDFF),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        // Modern back button with animation
                        ScaleTransition(
                          scale: CurvedAnimation(
                            parent: ModalRoute.of(context)!.animation!,
                            curve: Curves.elasticOut,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back, color: Color(0xFF6750A4)),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'About App',
                              style: TextStyle(
                                color: Color(0xFF1C1B1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            
            // Main content area with scroll animations
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAnimatedSection(
                      context: context,
                      delay: 0,
                      title: 'Our Story',
                      content: 'Hava Weather was born out of a passion for providing accurate, localized weather forecasts to help communities make better decisions. Our journey began in 2024 when our team recognized the need for hyper-local weather predictions in the Choondacherry region.',
                    ),
                    const SizedBox(height: 24),
                    _buildAnimatedSection(
                      context: context,
                      delay: 100,
                      title: 'What We Do',
                      content: 'Hava Weather combines IoT sensors with advanced AI algorithms to deliver precise 7-day weather forecasts. Our system integrates real-time environmental monitoring with historical data analysis to provide the most accurate predictions for your specific location.',
                    ),
                    const SizedBox(height: 24),
                    _buildAnimatedSection(
                      context: context,
                      delay: 200,
                      title: 'What Drives Us',
                      content: 'We believe that accurate weather information should be accessible to everyone. Our team is driven by the potential to positively impact agriculture, environmental management, and daily life through reliable weather forecasting.',
                    ),
                    const SizedBox(height: 24),
                    _buildAnimatedSection(
                      context: context,
                      delay: 300,
                      title: 'Our Mission',
                      content: 'To empower individuals and communities with precise, localized weather forecasts that enable better decision-making and improve quality of life. We strive to push the boundaries of weather prediction technology while maintaining simplicity and accessibility.',
                    ),
                    const SizedBox(height: 24),
                    _buildAnimatedSection(
                      context: context,
                      delay: 400,
                      title: 'Thank You',
                      content: 'We sincerely appreciate your trust in Hava Weather. Our team is committed to continuously improving our service to meet your weather information needs. Your feedback and support inspire us to do better every day.',
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedSection({
    required BuildContext context,
    required int delay,
    required String title,
    required String content,
  }) {
    final animation = ModalRoute.of(context)!.animation!;
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: Interval(
        delay / 1000,
        1.0,
        curve: Curves.easeOutQuart,
      ),
    );

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(curvedAnimation),
      child: FadeTransition(
        opacity: curvedAnimation,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1C1B1F),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                content,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

