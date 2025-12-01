import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResponsivePackage extends StatelessWidget {
  const ResponsivePackage({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Package',)
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: orientation == Orientation.portrait ? Axis.vertical : Axis.horizontal,
          child: orientation == Orientation.portrait ?
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.blue,
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.green,
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.grey,
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.amber,
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.purpleAccent,
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              SizedBox(height: 10.h,),
              Text(
                'Testing Responsive Text',
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                'Column Layout',
                style: TextStyle(fontSize: 16.sp),
              ),
              Text("Without Responsive Text",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ) :
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.blue,
              ),
              SizedBox(width: 10.w,),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              SizedBox(width: 10.w,),
              Text(
                'Testing Responsive Text',
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(width: 10.w,),
              Text(
                'Row Layout',
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(width: 10.w,),
              Text("Without Responsive Text",
              style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      )
    );
  }
}
