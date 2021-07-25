import 'package:first_flutter_project/models/catalog.dart';
import 'package:first_flutter_project/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
            key: null,
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
