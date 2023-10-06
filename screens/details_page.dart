import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:happyproertiesq/screens/contact_agent.dart';
import 'package:happyproertiesq/models/property_model.dart';
import 'package:happyproertiesq/models/portfolioproperty_model.dart';
import 'package:happyproertiesq/models/category_model.dart';
import 'package:happyproertiesq/models/portfolio_model.dart';
import 'package:happyproertiesq/screens/contact_agent.dart';




class DetailsPage extends StatelessWidget {
  final PropertyModel propertyModel;
  const DetailsPage({
    Key? key,
    required this.propertyModel,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselwithIndicatorDemo(
                  propertyModel: propertyModel,
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "R ${ propertyModel.price}",
                            style: const TextStyle( color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25

                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        propertyModel.subTitle.toString(),
                        style: const TextStyle( color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            specWidget(
                              context,
                              LineIcons.areaChart,
                              "${propertyModel.area} Sqft",
                            ),
                            specWidget(
                              context,
                              LineIcons.bed,
                              "${propertyModel.rooms} Rooms",
                            ),
                            specWidget(context, LineIcons.bath,
                                "${propertyModel.bathrooms} bathrooms"),
                            specWidget(context, LineIcons.utensilSpoon,
                                "${propertyModel.kitchen} Kitchen"),
                            specWidget(
                              context,
                              LineIcons.home,
                              "${propertyModel.floors} Floors",
                            ),
                            specWidget(context, LineIcons.car,
                                "${propertyModel.garage} Garages"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        "About this property",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        propertyModel.details,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Colors.black.withOpacity(0.5),
                          letterSpacing: 1.1,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactAgent(property: propertyModel)),
                      );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(4, 4),
                              blurRadius: 20,
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        height: 55,
                        width: 55,
                        child: Center(
                          child: Text(
                            "CONTACT AGENT",
                            style:
                            Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget specWidget(BuildContext context, IconData iconData, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Color(
                0xffE7CD6B,
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(iconData),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}








// this is the first way to do this. But instead of making this iteratively you can make a function instead of extracting the widget!

// class DetailsSpecItem extends StatelessWidget {
//   const DetailsSpecItem({
//     Key? key,
//     required this.propertyModel,
//   }) : super(key: key);

//   final PropertyModel propertyModel;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: const BoxDecoration(
//               color: Color(
//                 0xffE7CD6B,
//               ),
//               shape: BoxShape.circle,
//             ),
//             child: const Icon(Icons.home),
//           ),
//           const SizedBox(
//             width: 8,
//           ),
//           Text(
//             "${propertyModel.rooms} Rooms",
//             style: Theme.of(context).textTheme.subtitle1,
//           ),
//           const SizedBox(
//             width: 8,
//           ),
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: const BoxDecoration(
//               color: Color(
//                 0xffE7CD6B,
//               ),
//               shape: BoxShape.circle,
//             ),
//             child: const Icon(Icons.home),
//           ),
//           const SizedBox(
//             width: 8,
//           ),
//           Text(
//             "${propertyModel.area} Sqft",
//             style: Theme.of(context).textTheme.subtitle1,
//           ),
//         ],
//       ),
//     );
//   }
// }

class CarouselwithIndicatorDemo extends StatefulWidget {
  final PropertyModel propertyModel;
  const CarouselwithIndicatorDemo({
    Key? key,
    required this.propertyModel,
  }) : super(key: key);

  @override
  _CarouselwithIndicatorDemoState createState() =>
      _CarouselwithIndicatorDemoState();
}

class _CarouselwithIndicatorDemoState extends State<CarouselwithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: widget.propertyModel.images
              .map((item) => Image.asset(
            item,
            fit: BoxFit.cover,
            width: 1000,
          ))
              .toList(),
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height / 1.7,
            autoPlay: true,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.propertyModel.images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                width: 12,
                height: _current == entry.key ? 6 : 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: (Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black)
                      .withOpacity(
                    _current == entry.key ? 0.5 : 0.2,
                  ),
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}