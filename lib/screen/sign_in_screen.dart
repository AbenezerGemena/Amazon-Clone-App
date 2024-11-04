import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/custom_form_field.dart';
import 'package:amazon/widget/custom_main_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: screenSize.width*0.1,
              vertical: screenSize.height*0.02,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    amazonLogo,
                    height: screenSize.height*0.10,
                    
                    
                    
                    ),
                
                  Container(
                    height: screenSize.height*0.5,
                    width: screenSize.width*0.8,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1
                      )
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                     
                      children: [
                       const Text(
                          'Sign-In',
                          style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 20,
                          ),
                          ),
                        CustomFormField(
                          title: 'Email', 
                          controller: emailController, 
                          obscureText: false,
                          hintText: 'Please enter your email',
                          validationRegExp: EMAIL_VALIDATION_REGEX,
                          ),
                       CustomFormField(
                          title: 'Password', 
                          controller: passwordController, 
                          obscureText: true,
                          hintText: 'Please enter your password',
                          validationRegExp: PASSWORD_VALIDATION_REGEX,
                          ),
                     
          
                         Align(
                          alignment: Alignment.center,
                           child: CustomMainButton(
                              color: yellowColor, 
                              isLoading: false, 
                              onPressed: (){},
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 0.6
                              ),)
                              ),
                         ),
                     
                     
                      ],
                    ),
                   
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                          
                        ),
                      ),
                     const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "New to Amazon",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomMainButton(
                      color:Colors.grey.shade400, 
                      isLoading: false, 
                      onPressed: (){},
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          letterSpacing: 0.6
                    
                        ),
                        )
                      ),
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