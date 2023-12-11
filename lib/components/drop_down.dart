import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  double? height;
  double? width;
  bool enbleRight;
  DropDown({
    this.height,
    this.width,
    this.enbleRight = false,
  });

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = '+234';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, bottom: 2),
      child: Container(
        height: widget.height ?? 58,
        width: widget.width ?? null,
        decoration: BoxDecoration(
          borderRadius: widget.enbleRight
              ? BorderRadius.all(Radius.circular(8))
              : BorderRadius.only(
                  bottomLeft: Radius.circular(8), topLeft: Radius.circular(8)),
          border: Border.all(
              color: AppColors.textField,
              style: BorderStyle.solid,
              width: 0.80),
        ),
        child: DropdownButton<String>(
          underline: SizedBox(),
          // Step 3.
          value: dropdownValue,
          // Step 4.
          items: <String>['+234', '+235', '+236', '+237']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            );
          }).toList(),
          // Step 5.
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}

class DropDownFeild extends StatefulWidget {
  DropDownFeild({Key? key}) : super(key: key);
  List<DropdownMenuItem<String>> item = [];

  @override
  State<DropDownFeild> createState() => _DropDownFeildState();
}

class _DropDownFeildState extends State<DropDownFeild> {
  String dropdownValue = 'Dog';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            //<-- SEE HERE
            borderSide: BorderSide(
              color: AppColors.black2,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            //<-- SEE HERE
            borderSide: BorderSide(
              color: AppColors.black2,
              width: 0.5,
            ),
          ),
          filled: true,
          fillColor: AppColors.white,
        ),
        dropdownColor: AppColors.white,
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: widget.item);
  }
}

// List<DropdownMenuItem<String>> get dropdownItems {
//   List<DropdownMenuItem<String>> menuItems = [
//     DropdownMenuItem(child: Text("USA"), value: "USA"),
//     DropdownMenuItem(child: Text("Canada"), value: "Canada"),
//     DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
//     DropdownMenuItem(child: Text("England"), value: "England"),
//   ];
//   return menuItems;
// }


// <String>['Dog', 'Cat', 'Tiger', 'Lion']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(
//             value,
//             style: TextStyle(fontSize: 20),
//           ),
//         );
//       }).toList(),


// List<DropdownMenuItem<String>> items = ['Dog', 'Cat', 'Tiger', 'Lion']
//       .map<DropdownMenuItem<String>>((String value) {
//     return DropdownMenuItem<String>(
//       value: value,
//       child: Text(
//         value,
//         style: TextStyle(fontSize: 20),
//       ),
//     );
//   }).toList();