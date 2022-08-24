import 'package:flutter/material.dart';
import 'package:restaurant/presentation/menuTop.dart';
import 'package:restaurant/presentation/reviewScreen.dart';
import 'package:restaurant/presentation/searchBox.dart';
import 'package:restaurant/presentation/topItem.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int screen = 0;
  //0-main screen
  //1-review screen
  //2-about screen
  //3-menu screen
  //4-details screen
  //5-order screen
  //6-authorisation/registration screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,

        title: Row(children: [
          GestureDetector(
              child: Image.asset("assets/images/logo.png"),
            onTap: (){setState(() {
              screen=0;
            });},
          ),
          const SizedBox(width: 25),
          Column(
              children:const [
                Text("Прием звонков",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),
                ),
                Text("с 10:00 до 21:00",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),
                )
              ]
          ),
        ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share, color: Colors.white)),
          IconButton(onPressed: (){}, icon: Image.asset("assets/images/backet.png")),
          //IconButton(onPressed: () => Scaffold.of().openDrawer(), icon: const Icon(Icons.menu, color: Colors.white))
          Builder(builder: (context){
            return IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: const Icon(Icons.menu, color: Colors.white));
          },)
        ],
        backgroundColor: Colors.black,
      ),
      body:
          screen == 0? Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  menuTopWidget(),
                  const SizedBox(height: 20),
                  searchBoxWidget(),
                  const SizedBox(height: 20),
                  Image.asset("assets/images/topofday.png"),
                  const SizedBox(height: 10),
                  const topItemWidget(topName: "Пицца пепперони", compound: "Томатный соус, салями, сыр Моцарелла, маслины, чесночное масло", price: "15 p", weight: "550 г", imgPath: "assets/images/image.png",),
                  const SizedBox(height: 10),
                  const topItemWidget(topName: "Пицца пепперони", compound: "Томатный соус, салями, сыр Моцарелла, маслины, чесночное масло", price: "14 p", weight: "530 г", imgPath: "assets/images/image.png",),
                  const SizedBox(height: 10),
                  const topItemWidget(topName: "Пицца пепперони", compound: "Томатный соус, салями, сыр Моцарелла, маслины, чесночное масло", price: "20 p", weight: "560 г", imgPath: "assets/images/image.png",),
                  const SizedBox(height: 10),
                  const topItemWidget(topName: "Пицца пепперони", compound: "Томатный соус, салями, сыр Моцарелла, маслины, чесночное масло", price: "17 p", weight: "650 г", imgPath: "assets/images/image.png",),
                  const SizedBox(height: 10),
                  const topItemWidget(topName: "Пицца пепперони", compound: "Томатный соус, салями, сыр Моцарелла, маслины, чесночное масло", price: "16 p", weight: "440 г", imgPath: "assets/images/image.png",),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ) : screen==1? ReviewScreenWidget(

          ): screen==2? const SizedBox.shrink(

          ): screen==3? const SizedBox.shrink(

          ): screen==4? const SizedBox.shrink(

          ): screen==5? const SizedBox.shrink(

          ): screen==6? const SizedBox.shrink(

          ): const SizedBox.shrink(),
      drawer: Drawer(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 72, 216, 22),
                      border: Border.all(
                        color: const Color.fromARGB(255, 72, 216, 22),
                      ),
                      borderRadius: const BorderRadius.all(const Radius.circular(5))
                  ),
                  child: const Text(
                    "+375 29 481 1 148",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ElevatedButton(
                        onPressed: (){},
                        child: const Text("ВОЙТИ"),
                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 255, 173, 78)),
                        )
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                    child: ElevatedButton(
                        onPressed: (){},
                        child: const Text("РЕГИСТРАЦИЯ"),
                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 72, 216, 22)),
                        )
                    )
                  ],
                ),
                Container(
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(126, 0, 0, 0)
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(126, 0, 0, 0)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: const Text("ОТЗЫВЫ"),
                          style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 72, 216, 22)),
                        )
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: (){setState(() {
                            screen=1;
                          });},
                          child: const Text("О НАС "),
                          style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 72, 216, 22)),
                        )
                    )
                  ],
                ),
              ],
            )
        )
      ),
    );
  }
}