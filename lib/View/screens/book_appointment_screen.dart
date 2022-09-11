import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        title: const Text("Book Your Appointment"),
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 1.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10.h,
              color: Colors.red,
            ),
            SizedBox(height: 5.h,),
            Container(
              height: 10.h,
              color: Colors.red,
            ),
            SizedBox(height: 5.h,),
            Container(
              height: 10.h,
              color: Colors.red,
            ),
            SizedBox(height: 5.h,),
            Container(
              height: 10.h,
              color: Colors.red,
            ),
            SizedBox(height: 5.h,),
          ],
        ),
      ),
    );
  }
}
