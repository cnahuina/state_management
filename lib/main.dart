import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class ChangeImage extends StatefulWidget {
  ChangeImage({Key key}) : super(key: key);

  @override
  _ChangeImageState createState() => _ChangeImageState();
}

class _ChangeImageState extends State<ChangeImage> {
  bool _active = true;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: _handleTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Stack(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    _active ? '' : 'assets/check.png',
                    width: 50.0,
                  ),
                ),
              ],
            ),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: _active ? Colors.grey[600] : Colors.lightGreen[700],
            ),
          ),
          Text(_active ? 'Inactivo' : 'Activo')
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Active',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo check'),
        ),
        body: Center(
          child: ChangeImage(),
        ),
      ),
    );
  }
}
