import 'package:flutter/material.dart';
import 'package:udemy_flutter111/shared/components/components.dart';

class LoginScreen extends StatefulWidget  {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(' Welcome To MyApp',)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    defaultFormFiled(
                      controller: emailController,
                      label: 'Email Adderess',
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validate: (String value)
                      {
                        if(value.isEmpty){
                          return 'the email must ot be empty ';
                        }
                        return null;
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    defaultFormFiled(
                    controller: passwordController,
                    label: 'Password',
                    prefix: Icons.lock,
                    type: TextInputType.visiblePassword,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'the password must ot be empty ';
                      }
                      return null;
                    },
                    isPassword: isPassword,
                    suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                  ),

                  SizedBox(
                      height: 10,
                    ),

                  defaultButton(
                    radius: 10,
                    text: 'login',
                    isUpperCase: false,
                    function: () {
                      if (formKey.currentState.validate()) {
                        print(passwordController.text);
                        print(emailController.text);
                      }
                    },
                  ),

                    SizedBox(
                      height: 20,
                    ),

                    defaultButton(
                    radius: 20,
                    background: Colors.red,
                    text: 'login',
                    width: 200,
                    function: () {
                      print(passwordController.text);
                      print(emailController.text);
                    },
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t Have An Account?'),
                        TextButton(onPressed: () {}, child: Text('Register Now.')),
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
