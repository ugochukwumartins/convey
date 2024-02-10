import 'dart:developer';

extension StringHelpers on String {
  //!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
  bool get isPasswordValid => RegExp(
          r"""^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[!#$%&'"()+,-./:;<=>?@[\]^`{|}~])[A-Za-z\d!#$%&'"()+,-./:;<=>?@[\]^`{|}~]{8,15}$""")
      .hasMatch(this);
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) {
    print(match.group(0));
    log(match.group(0)!);
  });
}
