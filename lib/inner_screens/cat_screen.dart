import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/consts/contss.dart';
import 'package:grocery_app/models/products_model.dart';
import 'package:grocery_app/providers/products_provider.dart';
import 'package:provider/provider.dart';

import '../services/utils.dart';
import '../widgets/back_widget.dart';
import '../widgets/empty_products_widget.dart';
import '../widgets/feed_items.dart';
import '../widgets/text_widget.dart';

class CategoryScreen extends StatefulWidget {
  static const routeName = "/CategoryScreenState";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController? _searchTextController = TextEditingController();
  final FocusNode _searchTextFocusNode = FocusNode();
  @override
  void dispose() {
    _searchTextController!.dispose();
    _searchTextFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    final productProviders = Provider.of<ProductsProvider>(context);
    final catName = ModalRoute.of(context)!.settings.arguments as String;
    List<ProductModel> productByCat = productProviders.findByCategory(catName);
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: TextWidget(
          text: 'All Products',
          color: color,
          textSize: 20.0,
          isTitle: true,
        ),
      ),
      body: productByCat.isEmpty
          ? const EmptyProdWidget(
              text: 'No products belong to this category',
            )
          : SingleChildScrollView(
              child: Column(children: [
                
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  padding: EdgeInsets.zero,
                  // crossAxisSpacing: 10,
                  childAspectRatio: size.width / (size.height * 0.70),
                  children: List.generate(productByCat.length, (index) {
                    return ChangeNotifierProvider.value(
                      value: productByCat[index],
                      child: const FeedsWidget(),
                    );
                  }),
                ),
              ]),
            ),
    );
  }
}
