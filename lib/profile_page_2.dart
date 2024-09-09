import 'package:flutter/material.dart';
import 'package:flutter_task_4/signin.dart';

class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({super.key});

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {

List<Icon> icons = [
    const Icon(Icons.settings, size: 39, color: Color(0xff9A9A9D),),
    const Icon(Icons.history, size: 39, color: Color(0xff9A9A9D),),
    const Icon(Icons.info_outline, size: 39, color: Color(0xff9A9A9D),),
    const Icon(Icons.logout_outlined, size: 39, color: Color(0xff9A9A9D),),
  ];

  List<String> titles = [
    "Settings",
    "History",
    "About App",
    "Log Out"
  ];
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded), 
          onPressed: (){}
          ),
      ),
      
      body: Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                //width: 364,
                height: 366,
                margin: const EdgeInsets.only(bottom: 37),
                decoration: BoxDecoration(
                  color: const Color(0xff333333),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding( 
                  padding: const EdgeInsets.only(right: 8.0, left: 8, bottom: 31, top: 76),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Name:    ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xffC4C4C4),),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Yassin Ahmed Ali", style: TextStyle(fontSize: 17, color: Color(0xffFF4B3A)),),
                              Container(width: 213, height: 1, color: const Color(0xffC4C4C4))
                            ],
                          ),
                          // TextField(
                          //   clipBehavior: Clip.none,
                          //   decoration: InputDecoration(
                          //     hintText: 'Your Name',
                          //     hintStyle: TextStyle(fontSize: 17, color: Color(0xffFF4B3A)),
                          //     enabledBorder: UnderlineInputBorder(
                          //       borderSide: BorderSide(color: Color(0xffC4C4C4)),
                          //     ),
                          //     focusedBorder: UnderlineInputBorder(
                          //       borderSide: BorderSide(color: Color(0xffFF4B3A)),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("E-mail:  ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xffC4C4C4),),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("yassinsawy@outlook.com", style: TextStyle(fontSize: 17, color: Color(0xffFF4B3A)),),
                            Container(width: 213, height: 1, color: const Color(0xffC4C4C4),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Address: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xffC4C4C4),),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("xyx, near abc, bcd road", style: TextStyle(fontSize: 17, color: Color(0xffFF4B3A)),),
                            Container(width: 213, height: 1, color: const Color(0xffC4C4C4),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Phone:   ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xffC4C4C4),),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("01033822107", style: TextStyle(fontSize: 17, color: Color(0xffFF4B3A)),),
                            Container(width: 213, height: 1, color: const Color(0xffC4C4C4),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("DOB:     ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xffC4C4C4),),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("12-01-2005", style: TextStyle(fontSize: 17, color: Color(0xffFF4B3A)),),
                            Container(width: 213, height: 1, color: const Color(0xffC4C4C4),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Pass:    ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xffC4C4C4),),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("**************", style: TextStyle(fontSize: 17, color: Color(0xffFF4B3A)),),
                            Container(width: 213, height: 1, color: const Color(0xffC4C4C4),)
                          ],
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: -45,
                left: 138,
                child: CircleAvatar(
                
                radius: 45,
                foregroundImage: AssetImage('assets/gamer.png'),
                backgroundColor: Color(0xffEAEAEA),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: icons[index],
                      title: Text(titles[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 20,),
                      onTap: (){
                        if(index == 3){
                          Navigator.pushAndRemoveUntil(context, 
                          MaterialPageRoute(builder: (context) => const SingIn())
                          ,(Route<dynamic>route) => false)
                          ;
                        }
                      },
                    ),
                  ),
                );
              }, 
              separatorBuilder: (context, index){
                return const SizedBox(height: 19,);
              }, 
              itemCount: 4
              ),
          )
        ],
      ),
      ),
    );
  }
}