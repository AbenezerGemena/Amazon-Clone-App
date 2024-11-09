import 'package:amazon/services/auth_service.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/custom_form_field.dart';
import 'package:amazon/widget/custom_main_button.dart';
import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  Future<void> _signUp()async{
    String? result = await _authService.signupUser(
      name: _nameController.text, 
      address: _addressController.text, 
      email: _emailController.text, 
      password: _passwordController.text
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(result ?? 'An unknown error occured'))
      );
  }

  
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _addressController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    
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
                 
                
                  SizedBox(
                    height: screenSize.height*0.7,
                    child: FittedBox(
                      child: Container(
                        height: screenSize.height*0.8,
                        width: screenSize.width,
                        padding: const EdgeInsets.all(25),
                        // decoration: BoxDecoration(
                        //   border: Border.all(
                        //     color: Colors.grey,
                        //     width: 1
                        //   )
                        // ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                         
                          children: [
                           const Text(
                              'Sign-Up',
                              style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 33,
                              ),
                              ),
                            CustomFormField(
                              title: "Name", 
                              controller: _nameController, 
                              obscureText: false,
                               hintText: "Enter your full Name", 
                               validationRegExp: NAME_VALIDATION_REGEX
                               ),
                            CustomFormField(
                              title: "Address", 
                              controller: _addressController, 
                              obscureText: false,
                               hintText: "Enter your Address", 
                               validationRegExp: NAME_VALIDATION_REGEX
                               ),
                            CustomFormField(
                              title: 'Email', 
                              controller: _emailController, 
                              obscureText: false,
                              hintText: 'Please enter your email',
                              validationRegExp: EMAIL_VALIDATION_REGEX,
                              ),
                           CustomFormField(
                              title: 'Password', 
                              controller: _passwordController, 
                              obscureText: true,
                              hintText: 'Please enter your password',
                              validationRegExp: PASSWORD_VALIDATION_REGEX,
                              ),
                      
                         
                                
                             Align(
                              alignment: Alignment.center,
                               child: CustomMainButton(
                                  color: yellowColor, 
                                  isLoading: false, 
                                  onPressed: _signUp,
                                  child: const Text(
                                    "Sign Up",
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
                    ),
                  ),
               
            
               
                  Align(
                    alignment: Alignment.center,
                    child: CustomMainButton(
                      color:Colors.grey.shade400, 
                      isLoading: false, 
                      onPressed: (){},
                      child: const Text(
                        "Back",
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