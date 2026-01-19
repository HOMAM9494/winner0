import 'dart:async';

import 'package:flutter/material.dart';
import 'package:winner0/ui/screens/home_screens/home.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}
class _OTPScreenState extends State<OTPScreen> {
  Timer? _timer;
  int _seconds = 80;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }
  void _startTimer() {
    _timer?.cancel();
    _seconds = 80;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_seconds <= 0) {
        t.cancel();
      } else {
        setState(() => _seconds--);
      }
    });
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final minutes = (_seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (_seconds % 60).toString().padLeft(2, '0');
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: const Color(0xFF0077CC),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 24),
                const Center(
                  child: Image(image: AssetImage('assets/logo.png'), height: 70),
                ),
                const SizedBox(height: 24),
                Text(
                  'التحقق من رقم الهاتف',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF0077CC),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Text(
                    '$minutes:$secs',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F80ED),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                LinearProgressIndicator(
                  value: (_seconds / 80),
                  color: const Color(0xFF00A8E0),
                  backgroundColor: Colors.grey.shade200,
                ),
                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (i) => digitBox()),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF00A8E0), Color(0xFF2F80ED)],
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ElevatedButton(
                    onPressed:
                        () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const HomeScreen()),
                        ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'التالي',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget digitBox() {
    return Container(
      width: 46,
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Text('', style: TextStyle(fontSize: 20)),
    );
  }
}
