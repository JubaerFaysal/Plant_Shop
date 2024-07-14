import 'package:flutter/material.dart';
import 'package:plant_shop/home.dart';
import 'package:plant_shop/trees.dart';

import 'details_tree.dart';
class First extends StatefulWidget {
   const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(235, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white10, 
        leading: 
        IconButton(icon: const Icon(Icons.chevron_left,size: 35,),
        onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Homescreen()),
            );
        },),
        centerTitle: true,
        title: const Text(
          'Search Product',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Image.asset("lib/trees/jubaer.png"),
        )
      ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                   flex: 6,
                  child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Search Products..",
                    hintStyle: const TextStyle(fontSize: 15),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                    prefixIcon: const Icon(Icons.search)
                  ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                  child: const Icon(Icons.display_settings_outlined),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 720,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                //crossAxisSpacing: 10,
                //mainAxisSpacing: 10,
                  ),
                itemCount: trees.length, 
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: () {
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(index: index),
                          ),
                        );
                },
                child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //height: 200,
                  //width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 145,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)
                              // image: const DecorationImage(
                              // fit: BoxFit.fill,
                              // image: AssetImage(
                              //             "lib/trees/Gemini_Generated_Image_8dg73t8dg73t8dg7-removebg-preview.png")),
                              // borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                   borderRadius: BorderRadius.circular(15),
                                   child: Image.asset(trees[index].image,
                                    fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,),
                        child: Text(
                          trees[index].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Text(
                              trees[index].price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                            Container(
                              width: 35,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  ),
              ),
              );
             
            })
          )
           
          
        ],
      ),
    );
  }
}
