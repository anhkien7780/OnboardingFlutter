import 'package:flutter/material.dart';
import 'package:onboarding/utils/validators.dart';

import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/standard_screen.dart';

class CreateNewAccountScreen extends StatefulWidget {
  final _passwordController = TextEditingController();

  CreateNewAccountScreen({super.key});

  @override
  State<CreateNewAccountScreen> createState() => _CreateNewAccountScreenState();
}

class _CreateNewAccountScreenState extends State<CreateNewAccountScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StandardScreen(
        child: SizedBox.expand(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 97, left: 36, right: 36),
              child: Column(
                children: [
                  SizedBox(
                    width: 326,
                    child: Column(
                      spacing: 26,
                      children: [
                        Text(
                          "Create Account",
                          style: TextStyle(
                            color: colors.primary,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Create an account so you can explore all the existing jobs",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 53),
                  Column(
                    spacing: 30,
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          spacing: 26,
                          children: [
                            CustomTextFormField(
                              hintText: "Email",
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your email";
                                } else if (!isEmailValidated(value)) {
                                  return "Invalid email";
                                }
                                return null;
                              },
                            ),
                            CustomTextFormField(
                              controller: widget._passwordController,
                              hintText: "Password",
                              obscureText: true,
                            ),
                            CustomTextFormField(
                              validator: (value) {
                                if (widget._passwordController.text != value) {
                                  return "Password do not match";
                                }
                                return null;
                              },
                              hintText: "Confirm Password",
                              obscureText: true,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        spacing: 30,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              fixedSize: WidgetStatePropertyAll(Size(357, 60)),
                            ),
                            onPressed: () {
                              _formKey.currentState!.validate();
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 357,
                            height: 41,
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  '/login',
                                );
                              },
                              child: Text(
                                "Already have an account",
                                style: TextStyle(
                                  color: Color(0xff494949),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 65),
                  Column(
                    spacing: 20,
                    children: [
                      Text(
                        "Or continue with",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: colors.primary,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          CustomTextButton(
                            imageUri:
                                "/Users/admin/AndroidStudioProjects/onboarding/lib/images/google.png",
                            onPressed: () {},
                          ),
                          CustomTextButton(
                            imageUri:
                                "/Users/admin/AndroidStudioProjects/onboarding/lib/images/facebook.png",
                            onPressed: () {},
                          ),
                          CustomTextButton(
                            imageUri:
                                "/Users/admin/AndroidStudioProjects/onboarding/lib/images/apple.png",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
