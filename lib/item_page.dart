import 'package:flutter/material.dart';
import 'package:fontresoft/fontresoft.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  bool isFavourite = false;
  bool isAdded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:  const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: IconButton(
              icon:  Icon(isFavourite? Icons.favorite: Icons.favorite_border), onPressed: () {
                setState(() {
                  isFavourite = !isFavourite;
                });
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 200,
              backgroundImage: AssetImage('assets/spicy.png'),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffFF470B),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffC4C4C4),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffC4C4C4),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffC4C4C4),
                ),

              ],
            ),
            const SizedBox(height: 15,),
            RichText(
              text: 
              TextSpan(
              text: 'Spicy Salmon\n',
              style: Font.poppins().copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
              children: [
                TextSpan(
                  text: '\t\t\t\t\t\t\tRs. 199',
                  style: Font.poppins().copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffFF470B)
                  )
                ),
            
              ],
            ),),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:41,top: 20,right: 41,bottom: 20),
              child: RichText(text: 
                TextSpan(
                text: 'Description\n',
                style: Font.poppins().copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
                children: [
                  TextSpan(
                    text: 'A sizzling taste of the Salmon with crunchiness of freshly baked veggeis and garnished with cherry tomatoes and basil oil',
                    style: Font.poppins().copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: '\n\nDelivery\n',
                    style: Font.poppins().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: 'Delivered within 30mins from your location* if placed now.\nCupon Available.',
                    style: Font.poppins().copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: '\n\nReviews ',
                    style: Font.poppins().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: '4.5/5 ',
                    style: Font.poppins().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFF470B)
                    ),
                  ),
                  TextSpan(
                    text: 'see all reviews',
                    style: Font.poppins().copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff9A9A9D)
                    )
                  ),
              
                ],
        
              ),),
            ),
            //const SizedBox(height: 10,),
            Container(
              height: 70,
              width: 314,
              decoration: BoxDecoration(
                color: isAdded? const Color(0xffFF470B):const Color(0xff12AB3D),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      isAdded = !isAdded;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(isAdded? Icons.add_shopping_cart_outlined:Icons.add_task_rounded,
                      color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text(
                        isAdded?'Add to Cart':'Added to Cart',
                        style: Font.poppins().copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Colors.white
                      ),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      

    );
  }
}