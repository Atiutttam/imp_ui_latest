import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String>nameList=['milk', 'tomato', 'Patato', 'butter','milk', 'tomato', 'Patato', 'butter','milk', 'tomato', 'Patato', 'butter'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Manager'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListView.separated(
              itemBuilder: (_, index){
                return ListTile(
                  leading: Column(
                    children: [
                      Expanded(child: SizedBox(height: 1,)),
                      Icon(Icons.ac_unit),
                      Expanded(child: SizedBox(height: 1,)),
                    ],
                  ),
                  title:Text("${nameList[index]}}",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),) ,
                  subtitle: Text('Rs 300\n${nameList[index]}'),
                  isThreeLine: true,
                  textColor: Colors.red,
                  iconColor: Colors.blueAccent,
                  trailing: Column(
                    children: [
                      Expanded(child: SizedBox(height: 1,)),
                      Icon(Icons.navigate_next),
                      Expanded(child: SizedBox(height: 1,)),
                    ],
                  ),
                  tileColor: Colors.amber.shade50,
                );
              },
              separatorBuilder: (_, index){
                return Divider(
                  color: Colors.amber,
                  height: 10,
                  thickness: 0.5,
                  indent: 50,
                  endIndent: 20,
                );
              },
              itemCount: nameList.length),
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}