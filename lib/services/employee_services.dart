import '../model/employee_model.dart';
import 'package:http/http.dart' as http;

class Employeeservice{
  static Future<List<Employeelist>> fetchlist()async{
    var response=await http.get(Uri.parse("http://www.mocky.io/v2/5d565297300000680030a986"));
    if(response.statusCode==200){
      var data=response.body;

      return employeelistFromJson(data);

    }

    else
    {
      throw Exception();
    }

  }
}