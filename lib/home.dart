import 'package:flutter/material.dart';

import 'firstpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List images=[
  "lib/trees/ppnngg-removebg-preview.png",
  "lib/trees/Gemini_Generated_Image_8dg73t8dg73t8dg7-removebg-preview.png",
  "lib/trees/Gemini_Generated_Image_8dg73v8dg73v8dg7-removebg-preview.png"
  
  ];

  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 72, 63, 63),
              backgroundColor: const Color.fromARGB(255, 187, 219, 245)
            ),
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const First()),
                );
            },
             child: const Text("Skip"))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentindex = value;
                  });
                },
                itemCount: images.length,
                itemBuilder: ((context, index) => 
                Image.asset(images[index],fit: BoxFit.fitHeight,))
                ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length, 
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.only(right: 5),
                  width: index==currentindex? 15 : 7,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == currentindex ?  const Color.fromARGB(255, 9, 218, 61):const Color.fromARGB(66, 129, 116, 116) ,
                  ),
                  )),
            ),
            const SizedBox(height: 20,),
            
            const Text("Enjoy your life with",style: TextStyle(fontSize: 42,fontWeight: FontWeight.w300),),
            const Text("Plants",style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600),),
             const SizedBox(height: 20,),
             IconButton(
               icon: const Icon(Icons.arrow_right_alt_outlined,size: 50,color: Colors.white,),
               onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const First()),);
               },
               style: IconButton.styleFrom(
                 backgroundColor: const Color.fromARGB(255, 86, 212, 90),
               ),
               )
             
          ],
        )
        ),
    );
  }
}