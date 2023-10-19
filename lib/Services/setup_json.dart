import 'dart:convert';
import 'dart:io';
import 'package:atmproject/Default/default_values.dart';
import 'package:encrypt/encrypt.dart';

Future<bool> setupJSON(String atmNo, String atmPIN) async {
  bool accLogged = false;
  File file = await defaultDir();
  if (file.existsSync()) {
    var jsonRaw = await file.readAsString();
    var jsonEncrypted = Encrypted.fromBase64(jsonRaw);
    var decrypted = encrypter.decrypt(jsonEncrypted, iv: iv);
    List jsonList = json.decode(decrypted);

    jsonList.map((e) {
      if (e['atmNo'] == atmNo) {
        return accLogged = true;
      }
    }).toList();

    if (!accLogged) {
      Map toAddMap = defaultMap(atmNo, atmPIN);
      jsonList.add(toAddMap);
      var jsonAdded = json.encode(jsonList);
      final encrypted = encrypter.encrypt(jsonAdded, iv: iv);
      file.writeAsString(encrypted.base64);
    }
  } else {
    final encrypted = encrypter.encrypt(defaultJSON(atmNo, atmPIN), iv: iv);
    file.writeAsString(encrypted.base64);
  }
  return accLogged;
}
