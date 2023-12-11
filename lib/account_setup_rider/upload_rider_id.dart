import 'dart:io';

import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadRiderId extends StatefulWidget {
  UploadRiderId({Key? key}) : super(key: key);

  @override
  State<UploadRiderId> createState() => _UploadRiderIdState();
}

class _UploadRiderIdState extends State<UploadRiderId> {
  File? PickImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Identification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Take a photo of your ID",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            PickImage != null
                ? Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 297,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: AppColors.black,
                    )),
                    child: Image.file(
                      PickImage!,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 297,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: AppColors.black,
                    )),
                    child: Center(
                      child: Text(
                        "Please slect an Image",
                      ),
                    ),
                  ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                _pickImageFromcamera();
              },
              child: Center(
                child: Image.asset(camerabutton),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Please slect an Image",
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Future _pickImageFromcamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    setState(() {
      PickImage = File(image!.path);
    });
  }
}
