import 'package:employee/services/employee_services.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController{
  var isloading=true.obs;
  var Emplist=[].obs;
  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  void fetch() async{

      isloading(true);
      var employee=await Employeeservice.fetchlist();
      if(employee!=null){
       Emplist.value=employee;

    }


  }
}
