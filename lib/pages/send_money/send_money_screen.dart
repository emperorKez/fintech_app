import 'package:flutter/material.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Send Money'),
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
          favoritesContainer(),
          contactsContainer()
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
      Text('USD')
    ],
  ), 
  const SizedBox(height: 15,),
  const Text('\$274,000', style: TextStyle(fontSize: 22),),  
],),
    );
  }
  
  Widget favoritesContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Favorites'),
        const SizedBox(height: 15,),
        GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return const AspectRatio(aspectRatio: 1, child: CircleAvatar(backgroundImage: AssetImage('assets/images/image1.png'),
            radius: 50,),);
          },
        ),
      ],),
      
    );
  }
  
  contactsContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Contacts'),
        const SizedBox(height: 15,),
        ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return const ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/image1.png'),),
              title: Text('Milly Adams'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              tileColor: Colors.white,
            );
          },
        ),
        
      ],),
      
    );
  }
}