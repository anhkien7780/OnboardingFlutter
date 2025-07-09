import 'package:flutter/material.dart';
import 'package:onboarding/ui/screen/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _fromKey = GlobalKey<FormState>();

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
                    width: 225,
                    child: Column(
                      spacing: 26,
                      children: [
                        Text(
                          "Login here",
                          style: TextStyle(
                            color: colors.primary,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Welcome back you've been missed!",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 74,),
                  Column(
                    spacing: 30,
                    children: [
                      Form(
                        key: _fromKey,
                        child: Column(
                          spacing: 29,
                          children: [
                            CustomTextFormField(hintText: "Email"),
                            CustomTextFormField(
                              hintText: "Password",
                              obscureText: true,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              color: colors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        spacing: 30,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              fixedSize: WidgetStatePropertyAll(Size(357, 60)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Sign in",
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
                                Navigator.pushNamed(context, '/register');
                              },
                              child: Text(
                                "Create new account",
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
                  const SizedBox(height: 65,),
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

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) => TextFormField(
    obscureText: widget.obscureText,
    decoration: InputDecoration(
      filled: true,
      fillColor: Color(0xffF1F4FF),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      hintText: widget.hintText,
      hintStyle: TextStyle(
        color: Color(0xff626262),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String imageUri;

  const CustomTextButton({
    super.key,
    required this.imageUri,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) =>
      IconButton(onPressed: onPressed, icon: Image.asset(imageUri));
}
