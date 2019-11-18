import 'package:my_safari_guide/models/guides_model.dart';
import 'package:my_safari_guide/models/tours_model.dart';

class TourData {
  static var tourCount = 4;

  static var categories = [
    "Cultural Tourism",
    "Beach Holiday",
    "Game Viewing",
    "Mountain Climbing"
  ];
  static var names = [
    "Sodales non justo. Vivamus euismod aliquam lobortis. Fusce quis rutrum magna.",
    "Sodales non justo. Vivamus euismod aliquam lobortis. Fusce quis rutrum magna.",
    "Sodales non justo. Vivamus euismod aliquam lobortis. Fusce quis rutrum magna.",
    "Sodales non justo. Vivamus euismod aliquam lobortis. Fusce quis rutrum magna."
  ];
  static var guides = [
    "Wesley Kileo",
    "Olesendeka Meng'oriki",
    "Lomayani Lembeli",
    "James Mtatifikolo"
  ];
  static var duration = ["15 days", "3-4 days", "10 days", "3 days"];
  static var cost = ["600", "1300", "1800", "2300"];
  static var imageAssetName = [
    "img20.jpg",
    "img14.jpg",
    "img03.jpg",
    "img15.jpg"
  ];

  static getTours(int position) {
    return Tour(categories[position], names[position], guides[position],
        duration[position], cost[position], imageAssetName[position]);
  }
}

class GuideData {
  static var guideCount = 12;
  static var names = [
    'Yusuph Kajabukama',
    'Olesendeka Mengorikie',
    'James Mtatifikolo',
    'Reuben Lengirikoo',
    'Wesley Kileo',
    'Abrahamu Mpitivyako',
    'Joel Mazigo',
    'Mac Tanda',
    'Cornel Mbele',
    'Revocatus Mtesingwa',
    'Ammenjieka Kisanga',
    'Laurence Masanja'
  ];
  static var companies = [
    'Cultural Tourism',
    'Leopard Tours & Safaris',
    'Abercombie & Kent',
    'Ranger Safaris',
    'Tomodachi Safaris',
    'Cultural Tourism',
    'Zara Tours',
    'Kibo Tours',
    'Keasly Tours & Safaris',
    'Maasai Wonderers',
    'Leopard Tours & Safaris',
    'Abercombie & Kent',
    'Ranger Safaris'
  ];

  static var categories = [
    'Cultural Tours',
    'Game Viewing',
    'Mountain Climbing',
    'Beach Holidays',
    'Photography',
    'Hunting',
    'Bird Watching',
    'Ice skating',
    'Cultural Tours',
    'Beach Holidays',
    'Photography',
    'Hunting',
    'Water Sports',
  ];
  static var started = [
    1990,
    1993,
    1996,
    2000,
    2007,
    2001,
    1998,
    1989,
    2010,
    2009,
    2003,
    2014,
  ];
  static var languages = [
    'English',
    'Spanish',
    'English',
    'Italian',
    'French',
    'Swahili',
    'Chinise',
    'Dutch',
    'Portuguese',
    'Japanese',
    'Korean',
    'Afrikaan'
  ];
  static var imageAssets = [
    'guide-01.jpg',
    'guide-02.jpg',
    'guide-03.jpg',
    'guide-04.jpg',
    'guide-05.jpg',
    'guide-06.jpg',
    'guide-07.jpg',
    'guide-08.jpg',
    'guide-09.jpg',
    'guide-010.jpg',
    'guide-011.jpg',
    'guide-012.jpg',
  ];
  static var bios = [
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.',
    'Duis hendrerit, purus a facilisis viverra, urna massa vehicula velit, eget condimentum mi felis mollis felis. Proin ornare nibh lectus, a pretium erat ullamcorper euismod.'
  ];
  static var tours = [
    142,
    189,
    260,
    108,
    301,
    162,
    179,
    160,
    111,
    331,
    456,
    760
  ];
  static var photos = [
    170,
    201,
    404,
    160,
    604,
    1701,
    2011,
    1404,
    1603,
    6041,
    6345,
    2345
  ];
  static var likes = [23, 29, 100, 56, 90, 49, 59, 180, 516, 190, 32, 201];

  static getGuides(int position) {
    return Guide(
        names[position],
        companies[position],
        categories[position],
        started[position],
        languages[position],
        imageAssets[position],
        bios[position],
        tours[position],
        photos[position],
        likes[position]);
  }
}
