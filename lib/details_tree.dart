import 'package:flutter/material.dart';
import 'package:plant_shop/trees.dart';

class DetailScreen extends StatelessWidget {
  final int index;
   const DetailScreen({super.key, required this.index});
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back,color: Colors.green,),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined,color: Colors.green,))
      ],
    ),
   body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Center(child: Text("Details for ${trees[index].title}",style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 25),)),
       //SizedBox(height: 35,),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
          child: SizedBox(
            width: double.infinity,
            height: 370,
            child:  ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(trees[index].image,fit: BoxFit.fill,)),
          ),
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 20),
          child: Text("${trees[index].title} Plants",
          style: const TextStyle(
            color: Colors.green,
            fontSize: 25,
            fontWeight: FontWeight.w600),),
        ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 20,top: 5),
            child: Text(
                'Enjoy you life with Plants..\nPlants make our life happy and peaceful.',
                style: TextStyle(color: Color.fromARGB(255, 104, 95, 95)),
              ),
          ),
             const SizedBox(
              height: 20,
            ),
          Container(
            width: double.infinity,
            // height: 200,
            padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              color: Colors.green
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                         const Icon(Icons.height,size: 40,color: Colors.white,),
                       const SizedBox(height: 5,),
                         const Text("Height",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),),
                         Text(trees[index].hght,style: const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    const Column(
                        children: [
                          Icon(
                            Icons.device_thermostat,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Temparature",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "14°F to 86°F",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                        const Column(
                        children: [
                          Icon(
                            Icons.yard_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pot",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "Ciramic Pot",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text("Price-",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(trees[index].price,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                      ],
                    ),
                    const SizedBox(width: 35,),
                    Expanded(
                      child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        //foregroundColor: Color.fromARGB(255, 158, 188, 159),
                        backgroundColor: const Color.fromARGB(255, 114, 235, 181),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.all(20)
                      ),
                       child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children:[ 
                           Text("Add to Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.shopping_cart_checkout,color: Colors.white,)
                         ]
                       ),
                       ),
                    )
                  ],
                ),
                const SizedBox(
                    height: 30,
                  ),
              ],
            ),
          )
        // Text("Price: ${trees[index].price}",
        //       style: const TextStyle(
        //           color: Colors.green,
        //           fontSize: 25,
        //           fontWeight: FontWeight.w600),
        //     ),
     
      ],
     ),
   ),
    );
  }
}