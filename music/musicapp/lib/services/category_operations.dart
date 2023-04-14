import 'package:musicapp/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {}
  static List<Category> getCategories() {
    return <Category>[
      Category('Top Songs',
          "https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg"),
      Category('Mj Hits',
          "https://is1-ssl.mzstatic.com/image/thumb/Purple71/v4/d1/ba/85/d1ba8582-972e-7e02-6f3b-cc47adfc055f/source/256x256bb.jpg"),
      Category('Top Songs',
          "https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg"),
      Category('Top Songs',
          "https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg"),
    ];
  }
}
