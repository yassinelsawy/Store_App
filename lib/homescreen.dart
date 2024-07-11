
import 'package:flutter/material.dart';
import 'package:fontresoft/fontresoft.dart';
import 'package:flutter_task_4/homescreen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _isChecked = false;
  // ignore: non_constant_identifier_names
  bool _PasswordVisible = true;
  
  


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xffFF4B3A),
      //backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xffFF4B3A),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 30, left: 31, right: 31),
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
         Container(
          margin: const EdgeInsets.only(bottom: 4),
          alignment: Alignment.centerLeft,
            child: Text(
              textAlign: TextAlign.left,
              'Email', 
            style: Font.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:  Colors.white,
                width: 1,
              ),
            ),
            child: TextField(
              
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: Font.poppins().copyWith(
                  fontSize: 14,
                  color: const Color(0xff333333),
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 20, top: 14, bottom: 14),
                ),
                
              ),
              
            ),
             const SizedBox(height: 50,),
         Row(
           children: [
            
             Container(
              margin: const EdgeInsets.only(bottom: 4),
              alignment: Alignment.centerLeft,
                child: Text(
      
                  'Password', 
                style: Font.poppins().copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  
                ),),
                
              ),
              const SizedBox(width: 180),
              // TextButton(onPressed: (){},
              // child: 
              // Row(children: [
              //   const Icon(Icons.visibility_off_rounded, color: Colors.white,),
              //   Text(
              //     ' Hide',
              //     style: Font.poppins().copyWith(
              //       fontSize: 14,
              //       color: Colors.white,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ],),
              // ),
           ],
         ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:  Colors.white,
                width: 1,
              ),
            ),
            child: TextField(
              obscureText: _PasswordVisible,
              onChanged: (value){
                setState(() {
                  _PasswordVisible = !_PasswordVisible;
                  
                });
              },
              decoration: InputDecoration(
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
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 20, top: 14, bottom: 14),
                ),
                
              ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen2()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen2()));
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
        ],),
      ),

    );
  }
}