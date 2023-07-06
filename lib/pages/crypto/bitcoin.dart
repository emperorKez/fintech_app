import 'package:flutter/material.dart';

class Crypto extends StatelessWidget {
  const Crypto({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text('Bitcoin'),
        actions: [
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent, foregroundColor: Colors.white, padding: const EdgeInsets.all(10)),
            onPressed: (){}, child: const Text('Buy')),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white, padding: const EdgeInsets.all(10)),
            onPressed: (){}, child: const Text('Sell'))
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 10), 
        children: [
          cryptoInfoContainer(),
          cryptoGraph(),
          cryptoDetail()
        ],
      ),
    ));
  }
  
  Widget cryptoInfoContainer() {
    return ListTile(
              leading: const Icon(Icons.currency_bitcoin_sharp),
              title: const Text('BTC', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text('Bitcoin'),
              trailing: Column(mainAxisSize: MainAxisSize.min,children: const [
                Text('\$203,000'),
                Text('23 BTC')
              ],),
              tileColor: Colors.white,
            );
  }
  
 Widget cryptoGraph() {
    return Container(
      height: 200,
      child: const Center(child: Text('space for graph'),),
    );
  }
  
 Widget cryptoDetail() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.min, 
      children: const [
        Text('Estimated purchase value'),
        Text('0.012'),
        SizedBox(height: 20,),
        Text('Trade value'),
        Text('\$50,000'),
        SizedBox(height: 20,),
        Text('Trade fee'),
        Text('\$1.22'),
        SizedBox(height: 20,),
      ],
    ),
  );
 }
}