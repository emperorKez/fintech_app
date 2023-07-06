
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text('Your Cards'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_card, color: Colors.blue,))
        ],
      ),
      body: ListView(
        shrinkWrap: true, physics: AlwaysScrollableScrollPhysics(), padding: EdgeInsets.symmetric(horizontal: 10), children: [
          mainCard(),
          otherCards()
        ],
      ),
    ));
  }
  
  Widget mainCard() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, 
        children: [
          Text('Main card'),
          SizedBox(height: 20,),
          Card(
            color: Colors.indigoAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text('Physical card'), 
                      Text('VISA'),
                      Spacer(),
                      Text('3645 6363 3759 9594'),
                      Text('James A. Harry')
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    )
  }
}