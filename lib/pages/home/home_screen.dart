import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Your Account'),
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
          transactionHistoryContainer(),
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
    children: [
      const Text('Balance'), 
      const Text('USD')
    ],
  ), 
  const SizedBox(height: 15,),
  const Text('\$274,000', style: TextStyle(fontSize: 22),),

  const SizedBox(height: 15,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent, foregroundColor: Colors.indigo, padding: const EdgeInsets.all(10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: (){}, child: const Text('Add money')),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent, foregroundColor: Colors.indigo, padding: const EdgeInsets.all(10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: (){}, child: const Text('Transfer money'))
    ],
  ),
],),
    );
  }
  
  Widget transactionHistoryContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Transactions'),
            GestureDetector(
              onTap: (){},
              child: const Text('See all'),
            )
          ],
        ),
        const SizedBox(height: 10,),
        ListView.builder(itemCount: 3,
          itemBuilder: (context, index){
            return const ListTile(
              leading: Icon(Icons.currency_exchange),
              title: Text('Thomas White'),
              trailing: Text('-\$200.00'),
              tileColor: Colors.white,
            );
          })
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
              children: [
                const Text('\$120', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                const Text('Spent this month', style: TextStyle(fontSize: 12),),
                const Text('Space for graph')

              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('\$160', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                const Text('Stock profit', style: TextStyle(fontSize: 12),),
                const Text('Space for graph')

              ],
            ),
          )
        ],)
        
      ],),
      
    );
  }
}