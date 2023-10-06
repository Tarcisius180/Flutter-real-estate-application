class PortfolioModel {
  String title;
  String assetPath;
  PortfolioModel({
    required this.title,
    required this.assetPath,
  });
}

List<PortfolioModel> categoriesp = [
  PortfolioModel(title: 'House', assetPath: 'lib/images/house.jpeg'),
  PortfolioModel(title: 'Apartment', assetPath: 'lib/images/apartment.jpeg'),
  PortfolioModel(title: 'Open Land', assetPath: 'lib/images/openland.jpeg'),
  PortfolioModel(title: 'Town House', assetPath: 'lib/images/townhouse.jpeg'),
];