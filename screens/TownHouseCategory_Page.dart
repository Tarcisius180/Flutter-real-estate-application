import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:happyproertiesq/models/category_model.dart';
import 'package:happyproertiesq/models/property_model.dart';
import 'package:happyproertiesq/screens/portfoliodetail_page.dart';
import '../models/portfolioproperty_model.dart';
import 'details_page.dart';

class THCategoryPage extends StatelessWidget {
  final CategoryModel categoryModel;
  const THCategoryPage({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    Text(
                      categoryModel.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(LineIcons.search),
                      hintText: "Search...",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Matches",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: townhouseProperties.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpandedRecommendationCardTH(
                      propertyModel: townhouseProperties[index],
                    );
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandedRecommendationCardTH extends StatelessWidget {
  const ExpandedRecommendationCardTH({
    Key? key,
    required this.propertyModel,
  }) : super(key: key);

  final PropertyModel propertyModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(propertyModel: propertyModel),
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
                image: AssetImage(propertyModel.thumbnail),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  propertyModel.title,
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
              "${propertyModel.area} square feet - ${propertyModel.rooms} rooms - ${propertyModel.bathrooms} bathrooms" ,
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
                        " ${propertyModel.subTitle}  \n  R ${propertyModel.price}",
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



// thanks for watching!
// do subscribe to my channel to get more videos! <3