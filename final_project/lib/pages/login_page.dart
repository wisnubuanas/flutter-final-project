import 'package:firebase_auth/firebase_auth.dart';
import 'package:final_project/components/my_button.dart';
import 'package:final_project/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          icon: Icon(
            Icons.cancel_outlined,
            size: 50,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          icon: Icon(
            Icons.cancel_outlined,
            size: 50,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 10),
                  Image.asset(
                    "images/logo6.png",
                    width: 200,
                    height: 100,
                  ),
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),

                  // // logo
                  // const Icon(
                  //   Icons.facebook_rounded,
                  //   size: 100,
                  // ),

                  const SizedBox(height: 5),

                  // welcome back, you've been missed!
                  Text(
                    "We're so exited to see you again!",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // email textfield
                  // MyTextField(
                  //   controller: emailController,
                  //   hintText: 'Email',
                  //   obscureText: false,
                  //   textCapitalization: TextCapitalization.none,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      controller: emailController,
                      obscureText: false, //This will obscure text dynamically
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        fillColor: Colors.grey.shade800,
                        filled: true,

                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Email',
                        // Here is key idea
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // password textfield
                  // MyTextField(
                  //   controller: passwordController,
                  //   hintText: 'Password',
                  //   obscureText: true,
                  //   textCapitalization: TextCapitalization.none,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      obscureText:
                          !_passwordVisible, //This will obscure text dynamically
                      decoration: InputDecoration(
                        // enabledBorder: const OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.grey),
                        // ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        fillColor: Colors.grey.shade800,
                        filled: true,

                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Password',
                        // Here is key idea
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.deepPurple,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // forgot password?
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot your password?',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // sign in button
                  MyButton(
                    text: "Sign In",
                    onTap: signUserIn,
                  ),

                  // not a member? register now
                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Need an account?',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                  // google + apple sign in buttons
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // // google button
                      // SquareTile(imagePath: 'lib/images/google.png'),

                      // SizedBox(width: 25),

                      // // apple button
                      // SquareTile(imagePath: 'lib/images/apple.png')
                      Image(
                        image: AssetImage("images/qr.jpeg"),
                        height: 200,
                        width: 200,
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Login with QR Code",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Scan this with the mobile app to log in instanly",
                        style: TextStyle(color: Colors.grey),
                      ),
                      // SquareTile(imagePath: 'lib/images/qr.jpeg')
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
