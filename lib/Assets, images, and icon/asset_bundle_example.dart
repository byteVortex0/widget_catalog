import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AssetBundleExample extends StatefulWidget {
  const AssetBundleExample({super.key});

  @override
  State<AssetBundleExample> createState() => _AssetBundleExampleState();
}

class _AssetBundleExampleState extends State<AssetBundleExample> {
  String _fileContent = "Loading...";

  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  Future<void> _loadJson() async {
    //Demo
    final String response = await rootBundle.loadString('assets/sample.json');

    final data = json.decode(response);

    setState(() {
      _fileContent = data.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(_fileContent, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
