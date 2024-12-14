import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Center(child: MyWidget2(true)),
          // appBar: AppBar(
          //   backgroundColor: Colors.red,
          //   title:const Text('Tự hoc Flutter'),
          // ),
          // body:const Center(
          //     child: Text('Hello World!'))),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {

  final bool loading;

  const MyWidget(this.loading, {super.key});

  @override
  Widget build(BuildContext context) {
    // if (loading) {
    //   return const CircularProgressIndicator();
    // } else {
    //   return const Text('State');
    // }
    return loading ? const CircularProgressIndicator() : const Text('State');
  }
}

class MyWidget2 extends StatefulWidget {
  
  final bool loading;

  MyWidget2(this.loading);

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2>{

  late bool _localloading;

  get onPressed => null;
  @override
  void initState() {
    // TODO: implement initState
    _localloading = widget.loading;
  }
  @override
  Widget build(BuildContext context) {
    return _localloading ? const CircularProgressIndicator() : FloatingActionButton(onPressed: onPressed);
  }

  void onClickButton(){
    setState(() {
      _localloading = false;
    });
  }
}