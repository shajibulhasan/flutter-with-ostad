import 'package:flutter/material.dart';
class Flist extends StatelessWidget {
  const Flist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View',)
      ),
      body: ListView.builder(
          itemCount: 11,
          itemBuilder: (context, index){
        // return Text('12 * $index = ${index*12}');
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/id/${index+10}/200/300'),
                ),
                title: Text('Item ${index+1}'),
                subtitle: Text('This is the subtitle for item ${index+1}'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
      }),
    );
  }
}
