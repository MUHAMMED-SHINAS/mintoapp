import 'package:flutter/material.dart';
import 'package:minto/orderscreens/cart_page.dart';
import 'package:minto/orderscreens/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/tables/bg.jpg",),
              fit: BoxFit.fill,
            ),
          ),
          // decoration: BoxDecoration(
          //   gradient: SweepGradient(
          //     startAngle: math.pi *0.2,
          //     endAngle: math.pi *1.7,
          //     colors: [
          //       Colors.red,
          //       Colors.yellow,
          //       Colors.blue,
          //       Colors.red
          //     ],
          //     stops: [0.0,0.25,0.5,0.75,1.0],
          //     tileMode: TileMode.clamp,
          //   )
          // ),
          child: Column(
            children: [
          Padding(padding: EdgeInsets.only(top: 30),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        // profile image
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/profile.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "User",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(right: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black
                    ),
                    child: Text("M I N T O",style: TextStyle(color: Colors.orange,fontSize: 60,fontWeight: FontWeight.bold),),
                  ),),
                GestureDetector(
                    onTap: () {
                      // navigate to cart page
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                    child: const Icon(Icons.shopping_cart_outlined,color: Colors.yellowAccent,))
              ],
            ),
          ),
    ),
              Container(
                child: Column(
                  children: [
                        Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Container(
                            child: Image.asset("assets/images/reception.png",
                            fit: BoxFit.fill,
                            height: 160,width: 300,),
                          ),
                        ),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Container(
                                  child: Image.asset("assets/tables/1.png",
                                    fit: BoxFit.fill,
                                    height: 110,width: 135,),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(18.0)
                                ),
                                child: TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.deepOrange),
                                      )
                                    )
                                  ),
                                  child: Text(
                                    "Book Now",style: TextStyle(
                                    fontSize: 20,
                                      color: Colors.black,
                                      backgroundColor: Colors.transparent),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Container(
                                      child: Image.asset("assets/tables/1.png",
                                        fit: BoxFit.fill,
                                        height: 110,width: 135,),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(18.0)
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.grey),
                                              )
                                          )
                                      ),
                                      child: Text(
                                        "Book Now",style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          backgroundColor: Colors.transparent),
                                      ),
                                      onPressed: (){},
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 36,top: 50),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-25/360),
                                  child: Text("RESERVED",style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.grey),),
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Container(
                                    child: Image.asset("assets/tables/1.png",
                                      fit: BoxFit.fill,
                                      height: 110,width: 135,),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                  child: TextButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18.0),
                                              side: BorderSide(color: Colors.grey),
                                            )
                                        )
                                    ),
                                    child: Text(
                                      "Book Now",style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        backgroundColor: Colors.transparent),
                                    ),
                                    onPressed: (){},
                                  ),
                                ),
                              ],
                            ),
                              Padding(padding: EdgeInsets.only(left: 36,top: 50),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-25/360),
                                  child: Text("RESERVED",style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.grey),),
                                ),),
        ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Container(
                                      child: Image.asset("assets/tables/2.png",
                                        fit: BoxFit.fill,
                                        height: 110,width: 135,),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(18.0)
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.grey),
                                              )
                                          )
                                      ),
                                      child: Text(
                                        "Book Now",style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          backgroundColor: Colors.transparent),
                                      ),
                                      onPressed: (){},
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 36,top: 50),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-25/360),
                                  child: Text("RESERVED",style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.grey),),
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Container(
                                  child: Image.asset("assets/tables/2.png",
                                    fit: BoxFit.fill,
                                    height: 110,width: 135,),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(18.0)
                                ),
                                child: TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.deepOrange),
                                          )
                                      )
                                  ),
                                  child: Text(
                                    "Book Now",style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      backgroundColor: Colors.transparent),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Container(
                                      child: Image.asset("assets/tables/2.png",
                                        fit: BoxFit.fill,
                                        height: 110,width: 135,),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(18.0)
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.grey),
                                              )
                                          )
                                      ),
                                      child: Text(
                                        "Book Now",style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          backgroundColor: Colors.transparent),
                                      ),
                                      onPressed: (){},
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 36,top: 50),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-25/360),
                                  child: Text("RESERVED",style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.grey),),
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Container(
                                  child: Image.asset("assets/tables/3.png",
                                    fit: BoxFit.fill,
                                    height: 110,width: 135,),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(18.0)
                                ),
                                child: TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.deepOrange),
                                          )
                                      )
                                  ),
                                  child: Text(
                                    "Book Now",style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      backgroundColor: Colors.transparent),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Container(
                                  child: Image.asset("assets/tables/3.png",
                                    fit: BoxFit.fill,
                                    height: 110,width: 135,),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(18.0)
                                ),
                                child: TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.deepOrange),
                                          )
                                      )
                                  ),
                                  child: Text(
                                    "Book Now",style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      backgroundColor: Colors.transparent),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Container(
                                      child: Image.asset("assets/tables/3.png",
                                        fit: BoxFit.fill,
                                        height: 110,width: 135,),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(18.0)
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.grey),
                                              )
                                          )
                                      ),
                                      child: Text(
                                        "Book Now",style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          backgroundColor: Colors.transparent),
                                      ),
                                      onPressed: (){},
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 36,top: 50),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-25/360),
                                  child: Text("RESERVED",style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.grey),),
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.only(left: 100,bottom: 0),
                      child: Container(
                        child: Image.asset("assets/images/area.png",
                          fit: BoxFit.fill,
                          height: 200,width: 330,),
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
  }
}
