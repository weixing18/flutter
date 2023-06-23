import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 计数器',
      theme: ThemeData(
        primarySwatch: Colors.purple, // 设置主题颜色为紫色
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _name = '林高';
  String _studentID = '20201060300';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 计数器'),
        backgroundColor: Colors.red, // 设置AppBar背景颜色为红色
      ),
      body: Container(
        color: Colors.red, // 设置背景颜色为红色
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '姓名: $_name',
                style: TextStyle(fontSize: 20, color: Colors.purple), // 设置姓名文本颜色为紫色
              ),
              Text(
                '学号: $_studentID',
                style: TextStyle(fontSize: 20, color: Colors.purple), // 设置学号文本颜色为紫色
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.purple, // 设置计数器背景颜色为紫色
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$_counter',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: '减少',
            child: Icon(Icons.remove),
            backgroundColor: Colors.purple, // 设置减少按钮的背景颜色为紫色
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: '增加',
            child: Icon(Icons.add),
            backgroundColor: Colors.purple, // 设置增加按钮的背景颜色为紫色
          ),
        ],
      ),
    );
  }
}
