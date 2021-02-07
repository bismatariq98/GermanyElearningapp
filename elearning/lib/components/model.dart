import 'package:elearning/Screens/Login/components/thirdpage.dart';

class Heading {
  final String name;
  final String numOfCourses;
  final String image;
  final bool isSelected;
  Heading({this.name, this.numOfCourses, this.image, this.isSelected});
}

class SubCategoryModel {
  final String name;
  final String image;
  final bool isSelected;
  final String category;
  SubCategoryModel({this.image, this.isSelected, this.name, this.category});
}

class Category {
  final String name;
  final String image;
  final bool isSelected;
  final String heading;
  Category({this.image, this.isSelected, this.name, this.heading});
}

class Spell {
  final String name;
  Spell({this.name});
}

// List<String> jnab = [
//   'News',
//   'Entertainment',
//   'Politics',
//   'Automotive',
//   'Sports',
//   'Education',
//   'Fashion',
//   'Travel',
//   'Food',
//   'Tech',
//   'Science',
// ];

// List<Heading> categories = categoriesData
//     .map((item) => Heading(
//         item['name'], item['courses'], item['image'], item['isSelected']))
//     .toList();

// var categoriesData = [
//   {
//     "isSelected": false,
//     "name": "Marketing",
//     'courses': "17",
//     'image': "assets/images/marketing.png"
//   },
//   {
//     "isSelected": false,
//     "name": "UX Design",
//     'courses': "25",
//     'image': "assets/images/ux_design.png"
//   },
//   {
//     "isSelected": false,
//     "name": "Photography",
//     'courses': "13",
//     'image': "assets/images/photography.png"
//   },
//   {
//     "name": "Business",
//     'courses': "17",
//     'image': "assets/images/business.png",
//     "isSelected": false,
//   },
// ];

class listViewImage {
  final String imagess;
  listViewImage({this.imagess});
}

List<listViewImage> listss = [
  listViewImage(imagess: "assets/images/business.png"),
  listViewImage(imagess: "assets/images/business.png"),
  listViewImage(imagess: "assets/images/business.png"),
  listViewImage(imagess: "assets/images/business.png"),
];
