import 'package:employee/controller/employee_controller.dart';
import 'package:employee/widget/employee_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'employee_tile.dart';

void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),

  ));
}

class Homepage extends StatelessWidget {
final EmployeeController employeeController=Get.put(EmployeeController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Employee List"),
      ),
      body: Column(
        children: [
          Expanded(child: Obx((){
           return  ListView.builder(
                itemCount: employeeController.Emplist.length,
                itemBuilder: (context,index){

              return EmployeeTile(employeeController.Emplist[index]);
            });
          }))
        ],
      ),
    );
  }
}
