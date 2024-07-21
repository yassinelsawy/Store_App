
import 'package:flutter/material.dart';
import 'package:fontresoft/fontresoft.dart';
import 'package:flutter_task_4/home_page.dart';


class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {

  bool _isChecked = false;
  // ignore: non_constant_identifier_names
  bool _PasswordVisible = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  
  


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xffFF4B3A),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF4B3A),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 31, right: 31),
          child: Form(
            key: _formKey,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Sign In',
                    style:Font.poppins().copyWith(
                      fontSize: 28,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 100),
                  TextButton(onPressed:(){}, child: Text(
                    'Reset Password',
                    style:Font.poppins().copyWith(
                      fontSize: 14,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                    )
                  )
                ],
              ),
              const SizedBox(height: 50,),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Email', style: Font.poppins().copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  hintText: 'Enter your email',
                  hintStyle: Font.poppins().copyWith(
                    fontSize: 14,
                    color: const Color(0xff333333),
                    fontWeight: FontWeight.w400,
                  ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),

                    ),
                    contentPadding: const EdgeInsets.only(left: 20, top: 14, bottom: 14),
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return 'Please enter your email';
                      }
                      else if(!value.contains('@') || !value.contains('.com')|| value.length < 6) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,                    
                  ),
                  
                 const SizedBox(height: 50,),
                TextFormField(
                  obscureText: _PasswordVisible,
                  decoration: InputDecoration(
                    label: Text('Password', style: Font.poppins().copyWith(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white70),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your password',
                  hintStyle: Font.poppins().copyWith(
                    fontSize: 14,
                    color: const Color(0xff333333),
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _PasswordVisible = !_PasswordVisible;
                      });
                    },
                    icon: Icon(_PasswordVisible ? Icons.visibility_off_rounded : Icons.visibility_rounded, color: Colors.white,),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20, top: 14, bottom: 14),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter your password';
                    }
                    else if(value.length < 6){
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 10,),
                Row(
                  children:[
                    Checkbox(
                      value: _isChecked, 
                      onChanged: (bool? value){
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      focusColor: Colors.white ,
                      activeColor: Colors.white, 
                      checkColor: Colors.black,
                    ),
                    Text(
                      'Remember me',
                      style: Font.poppins().copyWith(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.black,
                  ),
                  child: TextButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: Font.poppins().copyWith(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const SizedBox(
                      width: 150,
                      child:
                      Divider(
                        color: Color(0xff9F9F9F),
                        thickness: 3,
                        endIndent: 10,
                        indent: 20,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      'OR',
                      style: Font.poppins().copyWith(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                      child:
                      Divider(
                        color: Color(0xff9F9F9F),
                        thickness: 3,
                        endIndent: 10,
                        indent: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.black,
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      'Create an Account',
                      style: Font.poppins().copyWith(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: 
                          Image.asset('assets/google.png')
                        ,),
                            Text(
                              'Sign In with Google',
                              style: Font.poppins().copyWith(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}