import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/image.png"),
        Column(
          children: [
            const Text("Пицца пепперони"),
            const Text("Томатный соус, салями, сыр Моцарелла, маслины, чесночное масло"),
            Row(
              children: [
                Text("15 р"),
                Text("550 г")
              ],
            ),
            ElevatedButton(onPressed: (){}, child: const Text("ЗАКАЗАТЬ"), style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 72, 216, 22)),)
          ],
        )
      ],
    );
  }

}