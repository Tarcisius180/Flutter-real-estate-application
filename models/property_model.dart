enum PropertyType { openLand, apartment, house, townhouse }

class PropertyModel {
  String title;
  String subTitle;
  String details;
  String thumbnail;
  List<String> images;
  int rooms;
  int area;
  int floors;
  int price;
  int garage;
  int bathrooms;
  int kitchen;
  bool isFavorite;
  double latitude;
  double longitude;
  PropertyType propertyType;
  Agent agent;

  PropertyModel({
    required this.title,
    required this.subTitle,
    required this.details,
    required this.thumbnail,
    required this.images,
    required this.rooms,
    required this.area,
    required this.floors,
    required this.price,
    required this.garage,
    required this.bathrooms,
    required this.kitchen,
    required this.propertyType,
    required this.agent,
    required this.latitude,
    required this.longitude,
    required this.isFavorite,
  });
}

class Agent {
  String name;
  String phoneNumber;
  String email;
  int rating;
  String duration;
  int experience;
  String thumbnail;

  Agent({
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.rating,
    required this.experience,
    required this.duration,
    required this.thumbnail
  });
}

List<PropertyModel> properties = [
  PropertyModel(
    title: 'Penthouse Villa',
    subTitle: "St. Second Avenue 780, NY",
    details:
    'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad...',
    thumbnail:'lib/images/properties/villa2.jpeg',
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
    propertyType: PropertyType.house,
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
    thumbnail:'lib/images/properties/ap4.jpeg',
    images: [
      'lib/images/properties/ap2.jpeg',
      'lib/images/properties/ap7.jpeg',
      'lib/images/properties/ap6.jpeg',
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
        thumbnail:'lib/images/agent2.jpeg'
    ),

  ),
  PropertyModel(
    title: 'Orchard House',
    subTitle: "St. Second Avenue 780, NY",
    details:
    'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
    thumbnail:'lib/images/properties/ap6.jpeg',
    images: [
      'lib/images/properties/ap4.jpeg',
      'lib/images/properties/ap5.jpeg',
      'lib/images/properties/ap6.jpeg',
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
    propertyType: PropertyType.house,
    agent: Agent(
        name: 'Sandy Jane',
        phoneNumber: '123-456-7890',
        email: 'jane@example.com',
        experience: 5,
        duration: 'Years',
        rating: 5,
        thumbnail:'lib/images/agent5.jpeg'
    ),

  ),
  PropertyModel(
    title: 'Luxury Apartment',
    subTitle: "123 Main Street, Cityville, CA",
    details:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices libero eget quam hendrerit, vel blandit nunc vestibulum.',
    thumbnail:'lib/images/properties/apt8.jpeg',
    images: [
      'lib/images/properties/apt8.jpeg',
      'lib/images/properties/apt9.jpeg',
      'lib/images/properties/apt10.jpeg',
    ],
    rooms: 4,
    area: 2200,
    floors: 5,
    price: 750000,
    garage: 1,
    bathrooms: 2,
    kitchen: 1,
    latitude: -25.741389,
    longitude: 28.191111,
    isFavorite: true,
    propertyType: PropertyType.apartment,
    agent: Agent(
      name: 'Sarah Johnson',
      phoneNumber: '987-654-3210',
      email: 'sarah@example.com',
      experience: 7,
      duration: 'Years',
      rating: 4,
      thumbnail:'lib/images/agent1.jpeg',
    ),
  ),
  PropertyModel(
    title: 'Lakefront Cottage',
    subTitle: "456 Lakeview Drive, Lakeside, MI",
    details:
    'Quisquam laudantium ex mollitia, voluptatibus aspernatur neque quos culpa quis doloremque quia sed veniam.',
    thumbnail:'lib/images/properties/apt9.jpeg',
    images: [
      'lib/images/properties/apt9.jpeg',
      'lib/images/properties/ap5.jpeg',
      'lib/images/properties/apt12.jpeg',
    ],
    rooms: 2,
    area: 1800,
    floors: 1,
    price: 320000,
    garage: 0,
    bathrooms: 1,
    kitchen: 1,
    latitude: -25.788333,
    longitude: 28.182778,
    isFavorite: false,
    propertyType: PropertyType.townhouse,
    agent: Agent(
      name: 'Emily Davis',
      phoneNumber: '555-123-4567',
      email: 'emily@example.com',
      experience: 3,
      duration: 'Years',
      rating: 4,
      thumbnail:'lib/images/agent3.jpeg',
    ),
  ),
  PropertyModel(
    title: 'City Penthouse',
    subTitle: "789 Skyscraper Avenue, Metropolis, NY",
    details:
    'Eiusmod veniam reprehenderit velit occaecat veniam laboris nostrud. Exercitation nisi est culpa tempor irure pariatur in qui ullamco quis laborum.',
    thumbnail:'lib/images/properties/ap3.jpeg',
    images: [
      'lib/images/properties/ap3.jpeg',
      'lib/images/properties/ap6.jpeg',
      'lib/images/properties/ap7.jpeg',
    ],
    rooms: 5,
    area: 4000,
    floors: 20,
    price: 1200000,
    garage: 3,
    bathrooms: 4,
    kitchen: 1,
    latitude: -25.746111,
    longitude: 28.211667,
    isFavorite: true,
    propertyType: PropertyType.apartment,
    agent: Agent(
      name: 'Michael Smith',
      phoneNumber: '777-888-9999',
      email: 'michael@example.com',
      experience: 10,
      duration: 'Years',
      rating: 5,
      thumbnail:'lib/images/agent4.jpeg',
    ),
  ),
  PropertyModel(
    title: 'Modern Apartment',
    subTitle: "456 Downtown Avenue, Pretoria, SA",
    details:
    'A modern and spacious apartment in the heart of Pretoria. Enjoy city living at its finest with this stylish apartment.',
    thumbnail:'lib/images/properties/apt10.jpeg',
    images: [
      'lib/images/properties/apt10.jpeg',
      'lib/images/properties/apt11.jpeg',
      'lib/images/properties/apt12.jpeg',
    ],
    rooms: 2,
    area: 1200,
    floors: 6,
    price: 850000,
    garage: 1,
    bathrooms: 2,
    kitchen: 1,
    latitude: -25.751111,
    longitude: 28.222222,
    isFavorite: false,
    propertyType: PropertyType.apartment,
    agent: Agent(
      name: 'Maria Rodriguez',
      phoneNumber: '111-222-3333',
      email: 'maria@example.com',
      experience: 4,
      duration: 'Years',
      rating: 4,
      thumbnail:'lib/images/agent4.jpeg',
    ),
  ),
  PropertyModel(
    title: 'Cozy Townhouse',
    subTitle: "789 Maple Street, Pretoria, SA",
    details:
    'A charming townhouse with a small garden in a friendly community.',
    thumbnail:'lib/images/properties/th5.jpeg',
    images: [
      'lib/images/properties/th6.jpeg',
      'lib/images/properties/th5.jpeg',
      'lib/images/properties/th4.jpeg',
    ],
    rooms: 3,
    area: 1600,
    floors: 2,
    price: 550000,
    garage: 1,
    bathrooms: 2,
    kitchen: 1,
    latitude: -25.759722,
    longitude: 28.233611,
    isFavorite: false,
    propertyType: PropertyType.townhouse,
    agent: Agent(
      name: 'Sophie Adams',
      phoneNumber: '777-666-5555',
      email: 'sophie@example.com',
      experience: 4,
      duration: 'Years',
      rating: 4,
      thumbnail:'lib/images/agent3.jpeg',
    ),
  ),
  PropertyModel(
    title: 'Modern Townhouse',
    subTitle: "101 Cedar Lane, Pretoria, SA",
    details:
    'A sleek and modern townhouse with high-end finishes and amenities.',
    thumbnail:'lib/images/properties/th2.jpeg',
    images: [
      'lib/images/properties/th2.jpeg',
      'lib/images/properties/th1.jpeg',
      'lib/images/properties/th3.jpeg',
    ],
    rooms: 4,
    area: 2000,
    floors: 3,
    price: 720000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1,
    latitude: -25.768611,
    longitude: 28.242222,
    isFavorite: true,
    propertyType: PropertyType.townhouse,
    agent: Agent(
      name: 'Daniel Brown',
      phoneNumber: '888-999-0000',
      email: 'daniel@example.com',
      experience: 6,
      duration: 'Years',
      rating: 4,
      thumbnail:'lib/images/agent2.jpeg',
    ),
  ),





];

// Separate properties into categories based on property type
List<PropertyModel> openLandProperties = properties
    .where((property) => property.propertyType == PropertyType.openLand)
    .toList();

List<PropertyModel> apartmentProperties = properties
    .where((property) => property.propertyType == PropertyType.apartment)
    .toList();

List<PropertyModel> houseProperties = properties
    .where((property) => property.propertyType == PropertyType.house)
    .toList();

List<PropertyModel> townhouseProperties = properties
    .where((property) => property.propertyType == PropertyType.townhouse)
    .toList();
