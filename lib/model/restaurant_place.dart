class RestaurantPlace {
  String name;
  String location;
  String description;
  String openTime;
  String imageAsset;
  List<MenuItem> menu;

  RestaurantPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openTime,
    required this.imageAsset,
    required this.menu,
  });
}

class MenuItem {
  final String label;
  final String price;

  MenuItem({required this.label, required this.price});
}

var restaurantPlaceList = [
  RestaurantPlace(
    name: 'Mamang Batagor',
    location: 'Jln. Rancamaya No. 1, Bogor',
    description:
        'Mamang Batagor menyajikan batagor khas Bandung dengan bumbu kacang gurih yang kaya rasa. Cocok dinikmati bersama keluarga atau teman.',
    openTime: '09:00 - 20:00',
    imageAsset: 'images/batagor.jpg',
    menu: [
      MenuItem(label: 'Batagor special', price: 'Rp. 20.000'),
      MenuItem(label: 'Batagor bakso', price: 'Rp. 15.000'),
      MenuItem(label: 'Batagor', price: 'Rp. 10.000'),
    ],
  ),
  RestaurantPlace(
    name: 'Mamang Siomay',
    location: 'Jln. Rancamaya No. 2, Bogor',
    description:
        'Nikmati siomay lezat dengan pilihan isian yang lengkap. Disajikan dengan sambal pedas dan perasan jeruk limau segar',
    openTime: '09:00 - 14:30',
    imageAsset: 'images/siomay.jpg',
    menu: [
      MenuItem(label: 'Siomay special', price: 'Rp. 20.000'),
      MenuItem(label: 'Siomay bakso', price: 'Rp. 15.000'),
      MenuItem(label: 'Siomay', price: 'Rp. 10.000'),
    ],
  ),
  RestaurantPlace(
    name: 'Mamang Seblak',
    location: 'Jln. Rancamaya No. 3, Bogor',
    description:
        'Seblak Mamang dibuat dengan bumbu khas dan topping melimpah, cocok bagi penggemar pedas sejati. Tersedia 24 jam!',
    openTime: '24 jam',
    imageAsset: 'images/seblak.jpg',
    menu: [
      MenuItem(label: 'Seblak special', price: 'Rp. 20.000'),
      MenuItem(label: 'Seblak bakso', price: 'Rp. 15.000'),
      MenuItem(label: 'Seblak', price: 'Rp. 10.000'),
    ],
  ),
];
