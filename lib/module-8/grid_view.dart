import 'package:flutter/material.dart';

class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid View",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.yellow],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 30,
                    offset: Offset(10, 20),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 6,
      ),

      // GridView.count(
      //   crossAxisCount: 2,
      //
      //   children: List.generate(7, (index) {
      //     return  Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         width: 150,
      //         decoration: BoxDecoration(
      //           //color: Colors.blue,
      //           gradient: LinearGradient(
      //             colors: [Colors.red, Colors.yellow],
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //           ),
      //           borderRadius: BorderRadius.circular(8),
      //           boxShadow: [
      //             BoxShadow(
      //               color: Colors.red,
      //               blurRadius: 30,
      //               offset: Offset(10, 20),
      //             ),
      //           ],
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(
      //               Icons.home,
      //               size: 50,
      //               color: Colors.white,
      //             ),
      //             Text(
      //               "Home",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   }),
      // )
    );
  }
}
