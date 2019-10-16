class CategoryData {
  CategoryData({this.title, this.items});
  final String title;
  final List<CategoryItemData> items;
}

class CategoryItemData {
  CategoryItemData({this.image, this.title});
  final String image;
  final String title;
}
