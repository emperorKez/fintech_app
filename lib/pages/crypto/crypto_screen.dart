import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Crypto'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: ListView(
        shrinkWrap: true, 
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          accountBalanceContainer(),
          watchlistContainer(),
          analyticsContainer()
        ],
      ),
      
    ));
  }
  
  Widget accountBalanceContainer() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
color: Colors.white      ),
child: Column(mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.start,
children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text('Balance'), 
      Text('BTC')
    ],
  ), 
  const SizedBox(height: 15,),
  const Text('1.00450', style: TextStyle(fontSize: 22),),

  const SizedBox(height: 15,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent, foregroundColor: Colors.indigo, padding: const EdgeInsets.all(10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: (){}, child: const Text('Add money')),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent, foregroundColor: Colors.indigo, padding: const EdgeInsets.all(10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: (){}, child: const Text('Withdraw')), 
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent, foregroundColor: Colors.indigo, padding: const EdgeInsets.all(10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: (){}, child: const Text('Exchange'))
    ],
  ),
],),
    );
  }
  
  Widget watchlistContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Watchlists'),
        const SizedBox(height: 15,),
        ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return  ListTile(
              leading: const Icon(Icons.currency_bitcoin_sharp),
              title: const Text('BTC', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text('Bitcoin'),
              trailing: Column(mainAxisSize: MainAxisSize.min,children: const [
                Text('\$203,000'),
                Text('23 BTC')
              ],),
              tileColor: Colors.white,
            );
          },
        ),
        
      ],),
      
    );
  }
  
  analyticsContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Analytics'),
            GestureDetector(
              onTap: (){},
              child: const Text('See all'),
            )
          ],
        ),
        const SizedBox(height: 10,),
        GridView(scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
        mainAxisSpacing: 10, crossAxisSpacing: 10), children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('\$120', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text('Your profit', style: TextStyle(fontSize: 12),),
                Text('Space for graph')

              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('\$1760', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text('Your loss', style: TextStyle(fontSize: 12),),
                Text('Space for graph')

              ],
            ),
          )
        ],)
        
      ],),
      
    );
  }
}