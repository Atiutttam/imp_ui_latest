import 'package:flutter/material.dart';

class DateTimePickerPage extends StatefulWidget {
  const DateTimePickerPage({super.key});

  @override
  State<DateTimePickerPage> createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  DateTime selectDateTime=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date time picker'),),
      body: Center(
        child: Column(
          children: [
            Text('${selectDateTime.day}-${selectDateTime.month}-${selectDateTime.year}'),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: ()async{
                  final DateTime? dateTime=await showDatePicker(
                      context: context,
                      initialDate:selectDateTime ,
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),);
                  if(dateTime!=null){
                    setState(() {
                      selectDateTime=dateTime;
                    });
                  }
                },
                child: Text('Select Date')),
          ],
        ),
      ),
    );
  }
}
