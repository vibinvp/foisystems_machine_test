import 'package:flutter/cupertino.dart';

import '../models/products_model.dart';

class ProductsProvider with ChangeNotifier { 
  List<ProductModel> get getProducts {
    return _productsList;
  }

  List<ProductModel> get getOnSaleProducts {
    return _productsList.where((element) => element.isOnSale).toList();
  }

  ProductModel findProdById(String productId) {
    return _productsList.firstWhere((element) => element.id == productId);
  }

  List<ProductModel> findByCategory(String categoryName) {
    List<ProductModel> _categoryList = _productsList
        .where((element) => element.productCategoryName
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();
    return _categoryList;
  }

  static final List<ProductModel> _productsList = [
    ProductModel(
      id: 'Men',
      title: 'Tshirt',
      price: 399,
      salePrice: 299,
      imageUrl: 'https://img.freepik.com/free-psd/isolated-handled-black-tshirt_125540-2262.jpg?w=1060&t=st=1692437545~exp=1692438145~hmac=72b081fa26fe3078f5f3572457dfc3e319991a5acd8e5807bffb2b4e51e590b4',
      productCategoryName: 'Men',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Cosmetics',
      title: 'Body Lotion',
      price: 350,
      salePrice: 299,
      imageUrl: 'https://img.freepik.com/free-vector/night-cosmetic-gel-eyes-skin-care_88138-256.jpg?w=740&t=st=1692437798~exp=1692438398~hmac=dd9990b3dd28b4ac5d62cf4eba8293d51315de5c238f7f1be310198f9254246d',
      productCategoryName: 'Cosmetics',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Cosmetics',
      title: ' Foundation',
      price: 399,
      salePrice:299,
      imageUrl: 'https://img.freepik.com/free-vector/color-stay-foundation-radiant-complexion_88138-80.jpg?w=740&t=st=1692438039~exp=1692438639~hmac=bd0a155b9ffcc71a54b8c5283f8f7780bad551599c19df9478d8049b32339792',
      productCategoryName: 'Cosmetics',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Men',
      title: 'Polo Tshirt',
      price: 799,
      salePrice: 599,
      imageUrl: 'https://w7.pngwing.com/pngs/386/539/png-transparent-t-shirt-polo-shirt-clothing-mockup-child-polo-shirt-tshirt-fashion-black.png',
      productCategoryName: 'Men',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Men',
      title: 'Allen Solly Men Polo',
      price: 799,
      salePrice: 599,
      imageUrl: 'https://m.media-amazon.com/images/I/71eUwDk8z+L._UX466_.jpg',
      productCategoryName: 'Men',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Women',
      title: 'Rayon Anarkali',
      price: 677,
      salePrice: 700,
      imageUrl: 'https://m.media-amazon.com/images/I/41HnNEzSeCL._UX679_.jpg',
      productCategoryName: 'Women',
      isOnSale: true,
      isPiece: false,
    ),
    
    ProductModel(
      id: 'Shoes',
      title: 'Sparx mens Sd9039g Sneakers',
      price: 2990,
      salePrice: 2499,
      imageUrl: 'https://m.media-amazon.com/images/I/71thnf-l9sL._UX575_.jpg',
      productCategoryName: 'Shoes',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Shoes',
      title: 'Nike',
      price: 4999,
      salePrice: 4999,
      imageUrl: 'https://img.freepik.com/free-photo/fashion-shoes-sneakers_1203-7529.jpg?w=1060&t=st=1692439754~exp=1692440354~hmac=3487016e26913380ae8ba9da890b8b6a9ec2ec3269b689ad407528bd4019a399',
      productCategoryName: 'Shoes',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Toys',
      title: 'Plush Toy',
      price: 499,
      salePrice: 299,
      imageUrl: 'https://freepngimg.com/thumb/toy/33903-2-plush-toy-transparent-image.png',
      productCategoryName: 'Toys',
      isOnSale: false,
      isPiece: false,
    ),
   
  ];
}
