import 'dart:io';

import 'package:encrypt/encrypt.dart';
import 'package:path_provider/path_provider.dart';

defaultDir() async {
  final Directory? jsonDir = await getDownloadsDirectory();
  String jsonPath = '${jsonDir?.path}/atm.json';
  File dfile = File(jsonPath);
  return dfile;
}

String defaultJSON(String atmNo, String atmPIN) {
  return '[{"atmNo":"$atmNo","atmPIN":"$atmPIN","chkBal":"25000","savBal":"25000"}]';
}

Map defaultMap(String atmNo, String atmPIN) {
  return {
    'atmNo': atmNo,
    'atmPIN': atmPIN,
    'chkBal': '25000',
    'savBal': '25000'
  };
}

final key = Key.fromUtf8('1234567891011121');
final iv = IV.fromLength(0);
final encrypter = Encrypter(AES(key, padding: null));
