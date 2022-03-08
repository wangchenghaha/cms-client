import 'dart:typed_data';

import 'package:cms_client/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signature/signature.dart';

/// example widget showing how to use signature widget
class SignaturePage extends StatefulWidget {
  @override
  _signature createState() => _signature();
}

class _signature extends State {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 4,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print('Value changed'));
    // 强制横屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('签名'),
        elevation: 1,
      ),
      body: ListView(
        children: <Widget>[
          //SIGNATURE CANVAS
          Signature(
            controller: _controller,
            height: MediaQuery.of(context).size.height - 100,
            backgroundColor: Colors.white,
          ),
          //OK AND CLEAR BUTTONS
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //SHOW EXPORTED IMAGE IN NEW ROUTE
                IconButton(
                  icon: const Icon(Icons.check),
                  color: Colors.blue,
                  onPressed: () async {
                    if (_controller.isNotEmpty) {
                      final Uint8List? data = await _controller.toPngBytes();
                      if (data != null) {
                        await Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  elevation: 1,
                                  actions: [
                                    IconButton(
                                      icon: const Icon(Icons.done_all),
                                      tooltip: 'Open shopping cart',
                                      onPressed: () {
                                        // handle the press
                                        Navigator.pushNamed(context, Routes.home);
                                      },
                                    ),
                                  ],
                                ),
                                body: Center(
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: Image.memory(data),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.undo),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() => _controller.undo());
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.redo),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() => _controller.redo());
                  },
                ),
                //CLEAR CANVAS
                IconButton(
                  icon: const Icon(Icons.clear),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() => _controller.clear());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
    @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }
}
