import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';

///Pilot
final key = Key.fromUtf8("zMdRgUkXp2s5v8y/B?O(H+MbPeShZxCe");

///Dev
// final key = Key.fromUtf8("zMdRgUkXp2s5v8y/B?O(H+MbPeShZxCe");

final iv = IV.fromLength(16);
final encrypter = Encrypter(AES(key, padding: 'PKCS7', mode: AESMode.cbc));

encrypt(String text) {
  return encrypter
      .encrypt(
        text,
        iv: iv,
      )
      .base64;
}

decrypt(String text) {
  return encrypter.decrypt(Encrypted.fromBase64(text), iv: iv);
}
