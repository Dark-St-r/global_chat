import 'package:flutter/material.dart';
import 'package:global_chat/controllers/signup_controller.dart';
import 'package:global_chat/pages/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var userForm = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: userForm,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 80,
              child: Image(
                image: AssetImage("assets/images/ic_launcher.png"),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: "Name",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Name is required";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: countryController,
                    decoration: const InputDecoration(
                      labelText: "Country",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Country is required";
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                }
                return null;
              },
            ),
            // const SizedBox(height: 10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: passwordController,
              obscureText: true,
              obscuringCharacter: '*',
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is required";
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (userForm.currentState!.validate()) {
                        // Do something
                        SignupController.createAccount(
                            context: context,
                            emailController: emailController.text,
                            passwordController: passwordController.text,
                            nameController: nameController.text,
                            countryController: countryController.text);
                      }
                    },
                    child: const Text("Sign up"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Login"),
                )
              ],
            ),
            // MediaQuery.viewInsetsOf(context).bottom > 0
            //     ? const SizedBox(height: 0)
            //     : const SizedBox(height: 50),
            // const SizedBox(height: 50),
          ],
        ),
      ),
    ));
  }
}
