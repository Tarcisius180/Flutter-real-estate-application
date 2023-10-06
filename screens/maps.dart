import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:happyproertiesq/models/property_model.dart';
import 'package:line_icons/line_icons.dart';

import 'details_page.dart';


class GoogleMapsPage extends StatefulWidget {
  @override
  _GoogleMapsPageState createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  GoogleMapController? _controller;

  // Define a list of property models
  List<PropertyModel> properties = [PropertyModel(
    title: 'Penthouse Villa',
    subTitle: "St. Second Avenue 780, NY",
    details:
    'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad...',
    thumbnail: 'lib/images/properties/villa2.jpeg',
    images: [
      'lib/images/properties/villa1.jpeg',
      'lib/images/properties/villa2.jpeg',
      'lib/images/properties/villa3.jpeg',
    ],
    rooms: 5,
    area: 3000,
    floors: 3,
    price: 300000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1,
    latitude: -25.746111,
    longitude: 28.188056,
    isFavorite: false,
    propertyType: PropertyType.apartment,
    agent: Agent(
      name: 'John Doe',
      phoneNumber: '123-456-7890',
      email: 'john@example.com',
      experience: 5,
      duration: 'Years',
      rating: 5,
      thumbnail:'lib/images/agent5.jpeg'
    ),
  ),
    PropertyModel(
      title: 'Duplex Housing',
      subTitle: "St. Second Avenue 780, NY",
      details:
      'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
      thumbnail: 'lib/images/properties/ap4.jpeg',
      images: [
        'lib/images/properties/ap2.jpeg',
        'lib/images/properties/ap7.jpeg',
        'lib/images/properties/ap6.jpeg'
      ],
      rooms: 3,
      area: 3500,
      floors: 2,
      price: 500000,
      garage: 2,
      bathrooms: 3,
      kitchen: 1,
      latitude: -25.748611,
      longitude: 28.191389,
      isFavorite: false,
      propertyType: PropertyType.house,
      agent: Agent(
          name: 'Jack Matt',
          phoneNumber: '123-456-7890',
          email: 'matt@example.com',
          experience: 5,
          duration: 'Years',
          rating: 5,
          thumbnail:'lib/images/agent5.jpeg'
      ),

    ),
    PropertyModel(
      title: 'Orchard House',
      subTitle: "St. Second Avenue 780, NY",
      details:
      'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
      thumbnail: 'lib/images/properties/ap6.jpeg',
      images: [
        'lib/images/properties/ap4.jpeg',
        'lib/images/properties/ap5.jpeg',
        'lib/images/properties/ap6.jpeg'
      ],
      rooms: 4,
      area: 4200,
      floors: 3,
      price: 600000,
      garage: 2,
      bathrooms: 3,
      latitude: -25.745000,
      longitude: 28.187500,
      kitchen: 1,
      isFavorite: false,
      propertyType: PropertyType.apartment,
      agent: Agent(
          name: 'Sandy Jane',
          phoneNumber: '123-456-7890',
          email: 'jane@example.com',
          experience: 5,
          duration: 'Years',
          rating: 5,
          thumbnail:'lib/images/agent5.jpeg'
      ),

    ),]; // Your property list goes here

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
            children:[
              GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(-25.746111, 28.188056),
                  zoom: 12.0,
                ),
                onMapCreated: (GoogleMapController controller) {
                  setState(() {
                    _controller = controller;
                  });
                },
                markers: Set<Marker>.of(properties.map((property) {
                  return Marker(
                    markerId: MarkerId(property.title),
                    position: LatLng(property.latitude, property.longitude),
                    onTap: () {
                      // Show property details in a custom info window
                      showPropertyInfoWindow(property);
                    },
                  );
                })),
              ),
              Positioned(
                top: 80, // Adjust the top position as needed
                left: 20, // Adjust the left position as needed
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous page
                  },
                  child: Icon(LineIcons.arrowLeft), // Use the Line icon for back
                  backgroundColor: Colors.black54, // Set the background color to red
                ),
              ),
            ]
        )
    );
  }


  void showPropertyInfoWindow(PropertyModel property) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return PropertyDetailsBottomSheet(property: property);
      },
    );
  }

}
class PropertyDetailsBottomSheet extends StatelessWidget {
  final PropertyModel property;

  PropertyDetailsBottomSheet({required this.property});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(propertyModel: property),
        ),
      ),
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(property.thumbnail),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              property.title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(style:
            Theme.of(context).textTheme.subtitle2!.copyWith(
              color: const Color(0xFF6D695E),
              fontSize: 23,
              fontWeight: FontWeight.bold,),
                "R ${property.price}"
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              property.details,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
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


