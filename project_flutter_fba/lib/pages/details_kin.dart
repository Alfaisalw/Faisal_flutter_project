import 'package:flutter/material.dart';
import 'package:project_flutter_fba/modles/riyadh_model.dart';

class DetailsKin extends StatelessWidget {
final RiyadhModel model ;



  const DetailsKin({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.sizeOf(context).width;
      double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(model.name!),
        backgroundColor: const Color.fromARGB(255, 103, 11, 149),
        
      ),body:ListView(

        children: [
          SizedBox(
              height: 300,
            child: 
              
                    ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset(model.imageDet!,height: 300,fit: BoxFit.fill,width: double.infinity,cacheWidth: 800,))

          )
          ,SizedBox(
            
            child: Column(
              children: [
                Text(model.description!,
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 254),fontWeight:FontWeight.bold ,height: 2,fontSize: 16),)
                ,SizedBox(height: 15,)
              ,Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Column(children: [////Resturent
                  CircleAvatar( radius: 28,backgroundColor: const Color.fromARGB(255, 82, 0, 213),child: Icon(Icons.restaurant ,color: const Color.fromARGB(255, 239, 238, 236),size: 28,),)
                  ,SizedBox(height: 9,),Text("Resturent",style: TextStyle(color: Colors.white70,fontSize: 15),)
                ],)
              ,Column(children: [///Caffe
                  CircleAvatar( radius: 28,backgroundColor: const Color.fromARGB(255, 82, 0, 213),child: Icon(Icons.local_cafe ,color: const Color.fromARGB(255, 239, 238, 236),size: 28,),)
                  ,SizedBox(height: 9,),Text("Caffe",style: TextStyle(color: Colors.white70,fontSize: 15),)
                ],)  ,Column(children: [//Shoopint
                  CircleAvatar( radius: 28,backgroundColor: const Color.fromARGB(255, 82, 0, 213),child: Icon(Icons.shopping_bag ,color: const Color.fromARGB(255, 239, 238, 236),size: 28,),)
                  ,SizedBox(height: 9,),Text("Shopping",style: TextStyle(color: Colors.white70,fontSize: 15),)
                ],), Column(children: [///Views
                  CircleAvatar( radius: 28,backgroundColor: const Color.fromARGB(255, 82, 0, 213),child: Icon(Icons.camera_alt ,color: const Color.fromARGB(255, 239, 238, 236),size: 28,),)
              
                  ,SizedBox(height: 9,),Text("Views",style: TextStyle(color: Colors.white70,fontSize: 15),)
                ],)],)
              ],
            ),
          )


        
       
                  ,Text("Most Popular",style: TextStyle(fontSize: 40,color: const Color.from(alpha: 1, red: 0.941, green: 0.941, blue: 0.929)),) 
                        ,SizedBox(height: 20,)
                        ,SizedBox(
                            height: 350,
                          child: 
                          ListView(scrollDirection: Axis.horizontal, children: [
                            
                            Container( ///Kingdom tower
                              width: width*0.7,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),child: Column(crossAxisAlignment: CrossAxisAlignment.start
                              ,children: [ Expanded(child:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/image4.png",height: 300,fit: BoxFit.fill,width: double.infinity,),))
                               ,Text("Soical Dining",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 243, 241, 235),fontWeight: FontWeight(450),),)

                              ]
                              ,)
                              ,)
                                ,SizedBox(width: 30,) 
                           , Container( ///Kingdom tower
                              width: width*0.7,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),child: Column(crossAxisAlignment: CrossAxisAlignment.start
                              ,children: [ Expanded(child:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/image3.png",height: 300,fit: BoxFit.fill,width: double.infinity,),))
                               ,Text(" view brigde",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 243, 241, 235),fontWeight: FontWeight(450),),)

                              ]
                              ,)
                              ,)         ,SizedBox(width: 30,) 
                           , Container( ///Kingdom tower
                              width: width*0.7,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),child: Column(crossAxisAlignment: CrossAxisAlignment.start
                              ,children: [ Expanded(child:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/image.png",height: 300,fit: BoxFit.fill,width: double.infinity,),))
                               ,Text("Kingdom Tower",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 243, 241, 235),fontWeight: FontWeight(450),),)

                              ]
                              ,)
                              ,) ],
      )
      
        
      ) 
    ]));
  }
}