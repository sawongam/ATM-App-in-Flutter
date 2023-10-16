import 'dart:convert';
import 'dart:io';

import 'package:atmproject/Default/default_values.dart';
import 'package:atmproject/Services/success_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

void transaction(context, String atmNo,amount,balType) async {
  File file = await defaultDir();
  String jsonRaw = await file.readAsString();
  var jsonParsed = json.decode(jsonRaw);
  var newJson = jsonParsed.map((e) {
    if (e['atmNo'] == atmNo) {
      int oldBal = int.parse(e[balType]);
      if (oldBal >= amount) {
        num newBal = oldBal - amount;
        e[balType] = newBal.toString();
        successDialog(context);
      } else {
        Fluttertoast.showToast(msg: 'Insufficient Balance');
      }
    }
    return e;
  }).toList();
  await file.writeAsString(json.encode(newJson));
  print(newJson);
  print(balType);
}
