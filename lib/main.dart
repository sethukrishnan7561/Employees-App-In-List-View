import 'package:flutter/material.dart';

void main() => runApp(EmployeeDetails());

class EmployeeDetails extends StatelessWidget {

  var names = [
    "MEERA",
    "SURYA",
    "SIJIN",
    "BIPIN",
    "ALPHIN",
    "ALHIL",
    "JACKSON",
    "BIJIN",
    "HARI",
    "SRUTHY"
  ];
  var empcode = [
    10389,
    10895,
    17968,
    16895,
    13987,
    17965,
    16897,
    13949,
    19678,
    17896
  ];
  var designation = [
    "Operation Manager",
    "Finance Manager",
    "Technology Manager",
    "Accounts Manager",
    "Recruitment Manager",
    "Store Manager",
    "Departmental Manager",
    "Human Resource Manager",
    "General Manager",
    "Marketing Manager"
  ];
  var salary = [
    25000,
    30000,
    27000,
    33000,
    28000,
    26000,
    24000,
    32000,
    33300,
    35500
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              title: Text("EMPLOYEE DETAILS"),
            ),
            body: Container(
              color: Colors.yellowAccent,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(names[index]),
                        leading: Icon(
                          Icons.account_circle, color: Colors.blue, size: 45,),
                        subtitle: Text("Employee code :" + empcode[index]
                            .toString() + "\n" + "Designation: " +
                            designation[index] + "\n" + "Salary :" +
                            salary[index].toString()),
                        trailing: Icon(Icons.delete, size: 30,),
                      ),
                    );
                  })),
            ),
          )
      ),
    );
  }
}
