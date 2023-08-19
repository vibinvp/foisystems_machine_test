import 'package:flutter/material.dart';
import 'package:grocery_app/services/utils.dart';
import 'package:grocery_app/widgets/categories_widget.dart';
import 'package:grocery_app/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
   CategoriesScreen({Key? key}) : super(key: key);

  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
  ];

List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'https://w7.pngwing.com/pngs/386/539/png-transparent-t-shirt-polo-shirt-clothing-mockup-child-polo-shirt-tshirt-fashion-black.png',
      'catText': 'Men',
    },
    {
      'imgPath': 'https://m.media-amazon.com/images/I/41HnNEzSeCL._UX679_.jpg',
      'catText': 'Women',
    },
    {
      'imgPath': 'https://img.freepik.com/free-vector/color-stay-foundation-radiant-complexion_88138-80.jpg?w=740&t=st=1692438039~exp=1692438639~hmac=bd0a155b9ffcc71a54b8c5283f8f7780bad551599c19df9478d8049b32339792',
      'catText': 'Cosmetics',
    },
    {
      'imgPath': 'https://img.freepik.com/free-photo/fashion-shoes-sneakers_1203-7529.jpg?w=1060&t=st=1692439754~exp=1692440354~hmac=3487016e26913380ae8ba9da890b8b6a9ec2ec3269b689ad407528bd4019a399',
      'catText': 'Shoes',
    },
    {
      'imgPath': 'https://freepngimg.com/thumb/toy/33903-2-plush-toy-transparent-image.png',
      'catText': 'Toys',
    },
     {
      'imgPath': 'https://www.pngmart.com/files/15/Apple-iPhone-12-PNG-Picture.png',
      'catText': 'Mobiles',
    },
  ];
  @override
  Widget build(BuildContext context) {

    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 10, // Vertical spacing
            mainAxisSpacing: 10, // Horizontal spacing 
            children: List.generate(6, (index) {
              return CategoriesWidget(
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
              );
            }),
          ),
        ));
  }
}
