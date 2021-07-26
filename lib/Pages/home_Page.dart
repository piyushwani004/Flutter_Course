import 'package:first_flutter_project/models/catalog.dart';
import 'package:first_flutter_project/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodData = jsonDecode(catalogJson);
    var productData = decodData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
