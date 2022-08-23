import 'package:flutter/material.dart';
import 'package:restaurant/presentation/menuTop.dart';
import 'package:restaurant/presentation/searchBox.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,

        title: Row(children: [
          Image.asset("assets/images/logo.png"),
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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            menuTopWidget(),
            const SizedBox(height: 20),
            searchBoxWidget(),
            const SizedBox(height: 20),
            Image.asset("assets/images/topofday.png")
            
          ],
        ),
      ),
      drawer: Drawer(
        child: Padding(
            padding: EdgeInsets.all(10),
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
                      borderRadius: BorderRadius.all(Radius.circular(5))
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
                        child: Text("ВОЙТИ"),
                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 255, 173, 78)),
                        )
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text("РЕГИСТРАЦИЯ"),
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
                          child: Text("ОТЗЫВЫ"),
                          style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 72, 216, 22)),
                        )
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text("О НАС "),
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