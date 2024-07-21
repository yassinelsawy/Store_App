import 'package:flutter/material.dart';
import 'package:flutter_task_4/item_page.dart';
import 'package:fontresoft/fontresoft.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<String>titles = ['Baked Rice','Rice Bowl','Fried Rice','Baked Rice','Rice Bowl','Fried Rice','Baked Rice'];
  List<String>images = ['assets/bakedrice.png','assets/ricebowl.png','assets/friedrice.png','assets/bakedrice.png','assets/ricebowl.png','assets/friedrice.png','assets/bakedrice.png'];
  List<String>prices = ['Rs. 199','Rs. 198','Rs. 215','Rs. 199','Rs. 198','Rs. 215','Rs. 199'];
  int index = 0;


  

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
        padding: const EdgeInsets.only(left: 25,right: 15 ,top: 20.0),
        child: Column(
          children: [
          Row(
            children: [
              Container(
                width: 172,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFA4A0C),
                ),
                child: 
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0 ,bottom: 20.0, top: 20.0),
                   child: Row(
                    children: [
                      RichText(text: 
                      TextSpan(
                        style: Font.inter().copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffFFFFFF),
                        ),
                        children:  [
                          TextSpan(
                            text: '25%',
                            style: Font.inter().copyWith(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: '   off\n',
                            style: Font.inter().copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: 'on all ',
                            style: Font.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: 'sushi',
                            style: Font.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: ' orders\nacross app*\n', 
                            style: Font.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: '\nValid till 25th Dec, 2023',
                            style: Font.inter().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1E1D1D),
                            ),
                          )
                        ],
                      )
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Container(
                width: 172,
                //height: 172,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFA4A0C),
                ),
                child: 
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0 ,bottom: 20.0, top: 20.0),
                   child: Row(
                    children: [
                      RichText(text: 
                      TextSpan(
                        style: Font.inter().copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffFFFFFF),
                        ),
                        children:  [
                          TextSpan(
                            text: '50%',
                            style: Font.inter().copyWith(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: '   off\n',
                            style: Font.inter().copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: 'on ',
                            style: Font.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: 'Mac n Cheese',
                            style: Font.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: ' orders\nacross app*\n', 
                            style: Font.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: '\nValid till 25th Dec, 2023',
                            style: Font.inter().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1E1D1D),
                            ),
                          )
                        ],
                      )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: 358,
            height: 138,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff333333),
            ),
            child: Row(
              children: [
              Padding(padding: 
              const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Column(
                children: [
                RichText(
                text:
                TextSpan(
                  style: Font.inter().copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffFFFFFF),
                  ),
                  children:[
                    const TextSpan(
                      text: 'Use code\n',
                      
                    ),
                    TextSpan(
                      text: 'iLovemyfood\n',
                      style: Font.inter().copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xffFFFFFF),
                      )
                    ),
                    const TextSpan(
                      text: 'to get '
                    ),
                    TextSpan(
                      text: '10% off ',
                      style: Font.inter().copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffFA4A0C),
                      )
                    ),
                    const TextSpan(
                      text: 'on all orders'
                    ),
                  ]
                )
                ), 
              ],
            ),
          ),
          ],
          ),
        ),
        const SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
            'Foods',
            style: Font.poppins().copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: const Color(0xffFA4A0C),
            ),
          ),
            Text(
            'Drinks',
            style: Font.poppins().copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 172, 170, 170),
            ),
          ),
            Text(
            'Sncaks',
            style: Font.poppins().copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 172, 170, 170),
            ),
          ),
            Text(
            'Sauce',
            style: Font.poppins().copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 172, 170, 170),
            ),
          ),
          ],
        ),
        const SizedBox(height: 5,),
        Container(
          margin: const EdgeInsets.only(right: 275.0),
          width: 87,
          height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xffFA4A0C),
          ),
        ),
        const SizedBox(height: 20,),
        Expanded(
          child: ListView.separated(
            itemCount: 7,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(images[index]),
                  ),
                ),
                subtitle: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                  titles[index],
                  style: Font.poppins().copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000),
                  ),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemPage()));
                  },
                  child: Text(
                    'view details',
                    style: Font.poppins().copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Text(
                  prices[index],
                  style: Font.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffFF470B),
                  ),
                ),
                ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(color: Color(0xffF2F2F2), thickness: 1, height: 20,
          ),
        ),
      ),
    ],
      ),
    );
  }
}