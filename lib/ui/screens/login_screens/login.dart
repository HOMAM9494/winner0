import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:winner0/ui/components/textfield.dart';
import 'package:winner0/ui/screens/login_screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isEmailLogin = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                /// LOGO
                Center(child: Image.asset('assets/logo.png', height: 90)),
                const SizedBox(height: 8),
                const Text(
                  'سجل دخولك واربح!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0077CC),
                  ),
                ),
                const SizedBox(height: 20),
                /// Google Login Button
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/google.png', height: 20),
                  label: const Text(
                    'تسجيل الدخول باستخدام حساب غوغل',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey.shade300),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'أو',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                const SizedBox(height: 12),
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
                          onTap: () => setState(() => isEmailLogin = true),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isEmailLogin ? null : Colors.white,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                gradient:
                                    isEmailLogin
                                        ? const LinearGradient(
                                          colors: [
                                            Color(0xFF00A8E0),
                                            Color(0xFF2F80ED),
                                          ],
                                        )
                                        : null,
                                color: isEmailLogin ? null : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color:
                                        isEmailLogin
                                            ? Colors.white
                                            : const Color(0xFF00A8E0),
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'رقم الهاتف',
                                    style: TextStyle(
                                      color:
                                          isEmailLogin
                                              ? Colors.white
                                              : const Color(0xFF00A8E0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => isEmailLogin = false),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: !isEmailLogin ? null : Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                gradient:
                                    !isEmailLogin
                                        ? const LinearGradient(
                                          colors: [
                                            Color(0xFF00A8E0),
                                            Color(0xFF2F80ED),
                                          ],
                                        )
                                        : null,
                                color:
                                    !isEmailLogin ? null : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    color:
                                        !isEmailLogin
                                            ? Colors.white
                                            : const Color(0xFF00A8E0),
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'البريد الإلكتروني',
                                    style: TextStyle(
                                      color:
                                          !isEmailLogin
                                              ? Colors.white
                                              : const Color(0xFF00A8E0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                if (!isEmailLogin)
                  InputField(
                    controller: emailController,
                    hint: 'أدخل البريد الإلكتروني',
                    icon: Icons.email,
                  )
                else
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: IntlPhoneField(
                      pickerDialogStyle: PickerDialogStyle(
                        backgroundColor: Colors.white,
                        searchFieldInputDecoration: InputDecoration(
                          hintText: 'ابحث عن دولة',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      initialCountryCode: 'SY',
                      languageCode: 'ar',
                      textAlign: TextAlign.end,
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'أدخل رقم الهاتف',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        
                      ),
                    ),
                  ),
                const SizedBox(height: 16),
                InputField(
                  controller: passwordController,
                  hint: 'أدخل كلمة المرور',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context.go('/forgot-password');
                    },
                    child: const Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(color: Color(0xFF2F80ED)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF00A8E0), Color(0xFF2F80ED)],
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/homescreen');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                /// Register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('ليس لديك حساب؟'),
                    TextButton(
                      onPressed:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterScreen(),
                            ),
                          ),
                      child: const Text(
                        'إنشاء حساب',
                        style: TextStyle(color: Color(0xFF2F80ED)),
                      ),
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
