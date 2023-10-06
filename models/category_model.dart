class CategoryModel {
  String title;
  String assetPath;
  CategoryModel({
    required this.title,
    required this.assetPath,
  });
}

List<CategoryModel> categories = [
  CategoryModel(title: 'House', assetPath: 'lib/images/house.jpeg'),
  CategoryModel(title: 'Apartment', assetPath: 'lib/images/apartment.jpeg'),
  CategoryModel(title: 'Open Land', assetPath: 'lib/images/openland.jpeg'),
  CategoryModel(title: 'Town House', assetPath: 'lib/images/townhouse.jpeg'),
];