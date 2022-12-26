import '../widgets/my_text_field.dart';
import '../widgets/social_button.dart';
import '../widgets/gradient_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Login',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              const SocialButton(
                label: 'Continue with Google',
                iconPath: 'assets/svgs/g_logo.svg',
              ),
              const SizedBox(height: 20),
              const SocialButton(
                label: 'Continue with Facebook',
                iconPath: 'assets/svgs/f_logo.svg',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text('or', style: TextStyle(fontSize: 17)),
              const SizedBox(height: 15),
              const MyTextField(
                hintText: 'Email (ex: abc@gmail.com)',
                obscure: false,
              ),
              const SizedBox(height: 15),
              const MyTextField(hintText: 'Password', obscure: true),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
