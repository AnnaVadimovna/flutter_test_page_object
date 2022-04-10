import 'package:flutter/material.dart';

class McListView extends StatefulWidget {
  McListView({Key? key}) : super(key: key);

  @override
  State<McListView> createState() => _McListViewState();
  static const Key emptyKey = Key('emptyKey');
  static const Key listKey = Key('listKey');
}

class _McListViewState extends State<McListView> {
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Test app')),
        body: isEmpty ? _empty() : _list(),
      ),
    );
  }

  Widget _empty() {
    return Column(
      key: McListView.emptyKey,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() => isEmpty = !isEmpty);
          },
          child: const Text('Switch state'),
        ),
      ],
    );
  }

  Widget _list() {
    return Column(
      key: McListView.listKey,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() => isEmpty = !isEmpty);
          },
          child: const Text('Switch state'),
        ),
      ],
    );
  }
}
