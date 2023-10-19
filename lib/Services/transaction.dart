import 'dart:convert';
import 'dart:io';

import 'package:atmproject/Default/default_values.dart';
import 'package:atmproject/Services/success_dialog.dart';
import 'package:encrypt/encrypt.dart';
import 'package:fluttertoast/fluttertoast.dart';

void transaction(context, String atmNo, amount, balType) async {
  File file = await defaultDir();
  String jsonRaw = await file.readAsString();
  final jsonEncrypted = Encrypted.fromBase64(jsonRaw);
  final decrypted = encrypter.decrypt(jsonEncrypted, iv: iv);
  var jsonParsed = json.decode(decrypted);
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
  final newJsonEncrypted = encrypter.encrypt(json.encode(newJson), iv: iv);
  await file.writeAsString(newJsonEncrypted.base64);
}
