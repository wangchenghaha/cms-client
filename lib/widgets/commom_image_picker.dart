import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

class CommonImagePicker extends StatefulWidget {
  final Title;

  const CommonImagePicker(this.Title, {Key? key}) : super(key: key);

  @override
  State<CommonImagePicker> createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  var _imageFile;

  @override
  Widget build(BuildContext context) {
    var ImageWidth = (MediaQuery.of(context).size.width - 30.0) / 2;
    var ImageHeight = ImageWidth * 213 / 160;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _openGallery();
          },
          child: _imageFile == null
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(
                        242, 242, 247, 1), // rgb(242, 242, 247) 100%
                  ),
                  width: ImageWidth,
                  height: ImageHeight,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.expand(),
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        Positioned(
                            child: Center(
                          child: const Icon(
                              IconData(0xe70c, fontFamily: 'Myfont'),
                              color: Color.fromRGBO(229, 230, 236, 1),
                              size: 120),
                        )),
                        Positioned(
                            child: Center(
                          child: const Icon(
                              IconData(0xe709, fontFamily: 'Myfont'),
                              color: Colors.white, // rgb(167, 166, 253) 100%
                              size: 60),
                        ))
                      ],
                    ),
                  ),
                )
              : Container(
                  width: ImageWidth,
                  height: ImageHeight,
                  child: Image.file(File(_imageFile.path)),
                ),
        ),
        Container(
          width: ImageWidth,
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          alignment: Alignment.center,
          child: Text(widget.Title),
        )
      ],
    );
  }

  /*相册*/
  _openGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = image;
    });
  }
}
