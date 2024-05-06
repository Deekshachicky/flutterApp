import 'package:flutter/material.dart';

class FormValidationPage extends StatefulWidget {
  const FormValidationPage({super.key});

  @override
  State<FormValidationPage> createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {

  GlobalKey<FormState> loginKey= GlobalKey<FormState>();

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Validation"),),
      body: Form(
        key: loginKey,
        child: Column(
          children: [
            TextFormField(
              controller: phoneController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter phone Number'
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: showPassword,
              controller: passwordController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon:const Icon(Icons.remove_red_eye_outlined))
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'please enter password';
                }
                else if(value.length<6){
                  return 'password should be 6character ';
                }
                return null;
              },
            ),

            ElevatedButton(onPressed: (){
              var isValid = loginKey.currentState!.validate();

              if(!isValid){
                return null;
              }
            }, child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
