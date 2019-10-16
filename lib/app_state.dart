import 'package:day16_shopping/model/category.dart';
import 'package:day16_shopping/model/user.dart';
import 'package:rxdart/rxdart.dart';

class AppState {
  final user = BehaviorSubject<User>.seeded(User(isLogged: false));
//TODO CHANGE THIS MOCK TO APP CLASS
  final List<CategoryData> categories = [
    CategoryData(title: 'Main category', items: [
      CategoryItemData(image: 'assets/images/beauty.jpg', title: 'Beauty'),
      CategoryItemData(image: 'assets/images/clothes.jpg', title: 'Clothes'),
      CategoryItemData(image: 'assets/images/perfume.jpg', title: 'Perfume'),
      CategoryItemData(image: 'assets/images/glass.jpg', title: 'Glass'),
    ]),
    CategoryData(title: 'Best category', items: [
      CategoryItemData(image: 'assets/images/beauty.jpg', title: 'Beauty'),
      CategoryItemData(image: 'assets/images/clothes.jpg', title: 'Clothes'),
      CategoryItemData(image: 'assets/images/perfume.jpg', title: 'Perfume'),
      CategoryItemData(image: 'assets/images/glass.jpg', title: 'Glass'),
    ]),
    CategoryData(title: 'Other category', items: [
      CategoryItemData(image: 'assets/images/beauty.jpg', title: 'Beauty'),
      CategoryItemData(image: 'assets/images/clothes.jpg', title: 'Clothes'),
      CategoryItemData(image: 'assets/images/perfume.jpg', title: 'Perfume'),
      CategoryItemData(image: 'assets/images/glass.jpg', title: 'Glass'),
    ]),
  ];
}
