import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:winner0/ui/components/textfield.dart';
import 'package:winner0/ui/screens/login_screens/otp.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool useEmail = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 8),
                const Center(
                  child: Image(image: AssetImage('assets/logo.png'), height: 70),
                ),
                const SizedBox(height: 8),
                const Text(
                  'نسيت كلمة المرور ؟',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0077CC),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 48,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => useEmail = true),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient:
                                  useEmail
                                      ? const LinearGradient(
                                        colors: [
                                          Color(0xFF00A8E0),
                                          Color(0xFF2F80ED),
                                        ],
                                      )
                                      : null,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              'البريد الإلكتروني',
                              style: TextStyle(
                                color:
                                    useEmail
                                        ? Colors.white
                                        : const Color(0xFF00A8E0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => useEmail = false),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient:
                                  !useEmail
                                      ? const LinearGradient(
                                        colors: [
                                          Color(0xFF00A8E0),
                                          Color(0xFF2F80ED),
                                        ],
                                      )
                                      : null,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              'رقم الهاتف',
                              style: TextStyle(
                                color:
                                    !useEmail
                                        ? Colors.white
                                        : const Color(0xFF00A8E0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                if (useEmail)
                  InputField(
                    controller: emailController,
                    hint: 'أدخل البريد الإلكتروني',
                    icon: Icons.email,
                  )
                else
                  IntlPhoneField(
                    controller: phoneController,
                    initialCountryCode: 'JO',
                    decoration: InputDecoration(
                      hintText: 'أدخل رقم الهاتف',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF00A8E0), Color(0xFF2F80ED)],
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ElevatedButton(
                    onPressed:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const OTPScreen()),
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
                      'إرسال رمز إعادة التعيين',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => context.go('/'),
                    child: const Text(
                      'عودة إلى تسجيل الدخول',
                      style: TextStyle(color: Color(0xFF2F80ED)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
