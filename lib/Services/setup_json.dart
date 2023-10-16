import 'dart:convert';
import 'dart:io';
import 'package:atmproject/Default/default_values.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';

Future<bool> setupJSON(String atmNo, String atmPIN) async {
  bool accLogged = false;
  File file = await defaultDir();
  if (file.existsSync()) {
    String jsonRaw = await file.readAsString();
    List jsonList = jsonRaw.isNotEmpty ? json.decode(jsonRaw) : [];

    jsonList.map((e) {
      if (e['atmNo'] == atmNo) {
        return accLogged = true;
      }
    }).toList();

    if (!accLogged) {
      Map toAddMap = defaultMap(atmNo, atmPIN);
      jsonList.add(toAddMap);
      var jsonAdded = json.encode(jsonList);
      file.writeAsString(jsonAdded);
    }
    print(jsonList);
  } else {
    file.writeAsString(defaultJSON(atmNo, atmPIN));
  }
  return accLogged;
}
