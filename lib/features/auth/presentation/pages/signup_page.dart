import 'package:blog_application_flutter/core/theme/app_pallet.dart';
import 'package:blog_application_flutter/features/auth/presentation/pages/signin_page.dart';
import 'package:blog_application_flutter/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_application_flutter/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign Up.",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              AuthField(hintText: "Name", controller: nameController),
              const SizedBox(height: 20),
              AuthField(hintText: "Email", controller: emailController),
              const SizedBox(height: 20),
              AuthField(hintText: "Password", controller: passwordController,isObscureText: true),
              const SizedBox(height: 20),
              const GradientButton(text: "Sign Up"),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInPage()));
                },
                child: RichText(
                    text: TextSpan(
                        text: 'Already have an account? ',
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                      TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            color: AppPallete.gradient2,
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
