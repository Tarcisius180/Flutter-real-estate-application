import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:happyproertiesq/screens/home_page.dart';
import 'package:happyproertiesq/screens/portfolio_page.dart';

import 'package:happyproertiesq/models/category_model.dart';
import 'package:happyproertiesq/models/property_model.dart';
import 'package:happyproertiesq/screens/category_page.dart';
import 'package:happyproertiesq/screens/details_page.dart';
import 'package:happyproertiesq/screens/login_page.dart';
import 'package:happyproertiesq/screens/profile_page.dart';
import 'package:happyproertiesq/models/portfolio_model.dart';
import 'package:happyproertiesq/screens/portfoliodetail_page.dart';
import 'package:happyproertiesq/models/portfolioproperty_model.dart';
import 'package:happyproertiesq/screens/login_page.dart';
import 'package:happyproertiesq/screens/apartment_category.dart';
import 'package:happyproertiesq/screens/TownHouseCategory_Page.dart';


import 'OpenlandCategory_page.dart';

import 'calculator.dart';
import 'maps.dart';



class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}
void navigateToCategory(BuildContext context, CategoryModel categoryModel) {
  switch (categoryModel.title) {
    case "House":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryPage(categoryModel: categoryModel),
        ),
      );
      break;
    case "Apartment":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ApartCategoryPage(categoryModel: categoryModel),
        ),
      );
      break;
    case "Open Land":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OLCategoryPage(categoryModel: categoryModel),
        ),
      );
      break;
    case "Town House":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => THCategoryPage(categoryModel: categoryModel),
        ),
      );
      break;
  }
}

class _HomePage2State extends State<HomePage2> {

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState> ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text('Menu',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                  )

              ),
              ListTile(
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()));
                },
              ),
              ListTile(
                title: const Text('Portfolio'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()));
                },
              ),
              ListTile(
                title: const Text('Favorites'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Calculators'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FinancialCalculatorPage()));
                },
              ),
              ListTile(
                title: const Text('Alerts'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Map'),
                onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoogleMapsPage()));
                },
              ),
              ListTile(
                title: const Text('Financial Report'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Marketplace'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
              ListTile(
                title: const Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Sign Out'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
        key: _globalKey,

        body: Builder(builder: (context) {
          // your conditions to render the widgets!

          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(icon: const Icon (Icons.menu), color: Colors.black,
                        onPressed: () {
                          _globalKey.currentState?.openDrawer() ;
                        }),

                    Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Portfolio",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(LineIcons.bellAlt)
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Most recent additions: ",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),

                    Column(

                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: pproperties.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ExpandedRecommendationCardP(
                              portfoliopropertyModel: pproperties[index],
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        )
    );
  }
}

class ExpandedRecommendationCardP extends StatelessWidget {
  const ExpandedRecommendationCardP({
    Key? key,
    required this.portfoliopropertyModel,
  }) : super(key: key);

  final PortfoliopropertyModel portfoliopropertyModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PortfolioDetailsPage(portfoliopropertyModel: portfoliopropertyModel),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 8, top: 12, bottom: 12),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(portfoliopropertyModel.thumbnail),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  portfoliopropertyModel.title,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer()
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "${portfoliopropertyModel.area} square feet - ${portfoliopropertyModel.rooms} rooms - ${portfoliopropertyModel.bathrooms} bathrooms" ,
              style: Theme.of(context).textTheme.caption!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        " ${portfoliopropertyModel.subTitle}  \n R${portfoliopropertyModel.income} P/M",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      )
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PorfolioButton extends StatelessWidget {
  final PortfolioModel portfolioModel;
  const PorfolioButton({
    Key? key,
    required this.portfolioModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PortfolioPage(
              portfolioModel: portfolioModel,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              portfolioModel.title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  height: 50,
                  width: 50,
                  image: AssetImage('${portfolioModel.assetPath}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}