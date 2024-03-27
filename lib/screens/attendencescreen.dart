import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mojgenieproject/api/loginApi/Listapi/responce.dart';
import 'package:mojgenieproject/api/loginApi/apiclass.dart';

class AttendenceScreen extends StatefulWidget {
  const AttendenceScreen({super.key});

  @override
  State<AttendenceScreen> createState() => _AttendenceScreenState();
}

class _AttendenceScreenState extends State<AttendenceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  var listDatas = [];
  getData() async {
    try {
      var response = await Dio().get('https://dummyjson.com/products');
      print(response.data);
      listDatas.add(response.data);
      print(listDatas);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    //  WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   await ApiClass.instance.getdatas();
    // });
    return Scaffold(
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount: listDatas.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Text(listDatas[index]["products"][index]["title"]),
                        Text(listDatas[index]["products"][index]["price"]
                            .toString()),
                        Text(listDatas[index]["products"][index]["brand"]),
                        Text(listDatas[index]["products"][index]["category"])
                      ],
                    ),
                  );
                },
              );
            }));
  }
}
