import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              // Aligning the image to the top center
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/login.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              // Text aligned to the left
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Welcome back,',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(250, 153, 153, 153)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Sign in to continue with exciting account',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(250, 153, 153, 153)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 240, 232, 232),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 240, 232, 232),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon:
                      const Icon(Icons.email_outlined, color: Colors.grey),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const PasswordTextField(),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          // When the checkbox value changes, update the isChecked variable
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(248, 96, 93, 93)),
                      ),
                    ],
                  ),
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(248, 96, 93, 93)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 20,
                      color: Color.fromARGB(249, 207, 203, 203),
                      thickness: 1,
                      indent: 0,
                      endIndent: 210,
                    ),
                  ),
                  Text('or'),
                  Expanded(
                    child: Divider(
                      height: 20,
                      color: Color.fromARGB(249, 207, 203, 203),
                      thickness: 1,
                      indent: 210,
                      endIndent: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 500,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 60,
                      ),
                      Icon(Icons.facebook, color: Colors.blue[700]),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Continue with Facebook',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 500,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 70,
                      ),
                      Image.asset('assets/images/Google.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Expanded(
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Not yet a member? ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 107, 213, 242),
                            decoration: TextDecoration.none,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupScreen(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.orange,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 240, 232, 232),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 240, 232, 232),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: 'Password',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Colors.grey,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      ),
      obscureText: _obscureText,
    );
  }
}
