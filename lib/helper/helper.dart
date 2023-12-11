extension StringHelpers on String {
  //!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
  bool get isPasswordValid => RegExp(
      r"""^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[!#$%&'"()+,-./:;<=>?@[\]^`{|}~])[A-Za-z\d!#$%&'"()+,-./:;<=>?@[\]^`{|}~]{8,15}$""")
      .hasMatch(this);
}