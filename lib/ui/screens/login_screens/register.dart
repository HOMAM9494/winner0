import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:winner0/ui/components/textfield.dart';
import 'package:winner0/ui/screens/login_screens/otp.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController lastController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

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
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                    height: 80,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'أنشئ حسابك وابدأ الفوز',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0077CC),
                  ),
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: firstController,
                  hint: 'الاسم الأول',
                  icon: Icons.person,
                ),
                const SizedBox(height: 12),
                InputField(
                  controller: lastController,
                  hint: 'اسم العائلة',
                  icon: Icons.person,
                ),
                const SizedBox(height: 12),
                InputField(
                  controller: emailController,
                  hint: 'البريد الإلكتروني',
                  icon: Icons.email,
                ),
                const SizedBox(height: 12),
                IntlPhoneField(
                  controller: phoneController,
                  initialCountryCode: 'JO',
                  decoration: InputDecoration(
                    hintText: 'أدخل رقم الهاتف',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                InputField(
                  controller: passwordController,
                  hint: 'كلمة المرور',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 12),
                InputField(
                  controller: confirmController,
                  hint: 'تأكيد كلمة المرور',
                  icon: Icons.lock,
                  isPassword: true,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const OTPScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'إنشاء حساب',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('لديك حساب؟'),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('تسجيل الدخول'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
