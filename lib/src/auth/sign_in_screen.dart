import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutterlogin/src/auth/components/custom_text_field.dart';
import 'package:flutterlogin/src/auth/sign_up_screen.dart';
import 'package:flutterlogin/src/base/base_screen.dart';

class SigInScreen extends StatelessWidget {
  const SigInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body:SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // nome do app
                   const Text.rich(TextSpan(
                      style: TextStyle(
                        fontSize: 40,
                      ),
                      children: [
                        TextSpan(
                          text: 'SNKRS',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ) 
                        ),
                        TextSpan(
                          text: 'NTC',
                          style: TextStyle(
                            color: Colors.white
                          )
                        )
                      ]
                    )),
                    
                    //categorias
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('STYLE'),
                            FadeAnimatedText('SNKRS'),
                            FadeAnimatedText('MODELS'),
                            FadeAnimatedText('NTC'),
                          ],),
                      ),
                    ),
                  ],
                ),
              ),
          
              //formulario
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Email
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                    ),
                    // Senha
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,  
                    ),
              
                    // Botão para entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular (18),
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (c) {
                            return const BaseScreen();
                          }));
                        },
                        child: const Text('Entrar', style: TextStyle(
                          fontSize: 18,
                        ),),
                      ),
                    ), 
              
                    //esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: () {}, 
                        child: const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    //divisor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
              
                    //Botão de novo usuario
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                          ),
                          side: const BorderSide(
                            width: 2,
                            color: Colors.blue
                          )
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c){
                                return SignUpScreen();
                              }
                            )
                          );
                        },
                        child: const Text('Criar conta', style: TextStyle(
                          fontSize: 18,
                        ),),
                      ),
                    ),
                  ],
                ),          
              ),    
            ],
          ),
        ),
      ),
    );
  } 
}