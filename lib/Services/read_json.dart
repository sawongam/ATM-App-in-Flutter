// import 'dart:convert';
// import 'dart:io';
// import 'package:atmproject/Default/default_values.dart';
// import 'package:path_provider/path_provider.dart';
//
// Future<List> initReadJSON(String atmNo) async {
//   File file = await defaultDir();
//   String jsonRaw = await file.readAsString();
//   var jsonParsed = json.decode(jsonRaw);
//   Map atmMap = jsonParsed.firstWhere((element) => element['atmNo'] == atmNo);
//   int chkBal = atmMap['chkBal'];
//   int savBal = atmMap['savBal'];
//   print( [chkBal, savBal]);
//   return [chkBal, savBal];
// }
