import 'package:flutter/material.dart';
import 'package:tiktok/views/widgets/text_input_field.dart';
import '../../../constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tiktok Clone',
            style: TextStyle(
              fontSize: 35,
              color: buttonColor,
              fontWeight: FontWeight.w900
            )),
            Text('Login',
                style: TextStyle(
                    fontSize: 25,
                    color: buttonColor,
                    fontWeight: FontWeight.w900
            ),),
            const SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: 'Email',
                icon: Icons.email,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: 'Senha',
                isObscure: true,
                icon: Icons.lock,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5)
                ),
              ),
              child: InkWell(
                onTap: () {
                  print('Login user');
                },
                child: const Center(
                  child:Text('Login', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  )),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?', style: TextStyle(
                  fontSize: 20,
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: InkWell(
                    onTap: () {

                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 20,
                        color: buttonColor
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}