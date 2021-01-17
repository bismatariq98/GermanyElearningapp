import 'package:elearning/components/model.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  // List<String> userHeading = [];
  List<String> userCategory = [];
  List<Category> subCategory = [];
  List<Category> selectedCategory = [];
  List<Heading> categories = [];
  //subcategoryModel
  List<SubCategoryModel> subCategoryModel = [];
  List<SubCategoryModel> showSubCategoryModel = [];
  List<String> userSubCategory = [];
  // List<Category> subShowCategory = [];
  List<Category> showlist = [];

  Future sortedListData() async {
    for (var i = 0; i < userCategory.length; i++) {
      for (var j = 0; j < subCategoryModel.length; j++) {
        if (subCategoryModel[j].category == userCategory[i]) {
          showSubCategoryModel.add(subCategoryModel[j]);
        }
      }
    }
  }

/* -------------------------------------------------------------------------- */
/*                           selected category LIst                           */
/* -------------------------------------------------------------------------- */
  Future selectedCategoryListData() async {
    selectedCategory.clear();
    for (var i = 0; i < userCategory.length; i++) {
      for (var j = 0; j < subCategory.length; j++)
        if (subCategory[j].name == userCategory[i]) {
          selectedCategory.add(subCategory[j]);
        }
    }
  }

/* -------------------------------------------------------------------------- */
/* Category sorted list according to heading                                   */
/* -------------------------------------------------------------------------- */
  List<Category> sortedListCat = [];
  sortedListCategory(heading) {
    sortedListCat = [];
    for (var i = 0; i < subCategory.length; i++) {
      if (subCategory[i].heading == heading) {
        sortedListCat.add(subCategory[i]);
      }
    }
    return sortedListCat;
  }

/* -------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------- */

  sortedListDatas() {
    for (var i = 0; i < categories.length; i++) {
      for (var j = 0; j < subCategory.length; j++) {
        if (subCategory[j].heading == categories[i].name) {
          showlist.add(subCategory[j]);
        }
      }
    }
  }

/* -------------------------------------------------------------------------- */
/*                             load all categories                            */
/* -------------------------------------------------------------------------- */

  loadDataSub() {
    subCategory = categoriesDataTwo
        .map((item) => Category(
            name: item['name'],
            image: item['image'], //jnb apny kam vekh lo sahe jrdia
            isSelected: item['isSelected'],
            heading: item['heading']))
        .toList();

    update();
  }

/* -------------------------------------------------------------------------- */
/*                               selection check  for categotry                            */
/* -------------------------------------------------------------------------- */

  bool checkSelection(String name) {
    bool checked = false;
    for (var i = 0; i < userCategory.length; i++) {
      if (name == userCategory[i]) {
        checked = true;
      }
    }
    return checked;
  }

/* -------------------------------------------------------------------------- */
/*                     check selection for sub categories                     */
/* -------------------------------------------------------------------------- */
  bool checkSelectionforCategory(String name) {
    bool checked = false;
    for (var i = 0; i < userSubCategory.length; i++) {
      if (name == userSubCategory[i]) {
        checked = true;
      }
    }
    return checked;
  }

/* -------------------------------------------------------------------------- */
/*                          load data after selection                         */
/* -------------------------------------------------------------------------- */

  loadSelectedDataSub(String category) {
    showSubCategoryModel.clear();
    for (var i = 0; i < subCategoryModel.length; i++) {
      if (subCategoryModel[i].category == category) {
        showSubCategoryModel.add(subCategoryModel[i]);
      }
    }
    update();
  }

  loadDatasubSub() {
    subCategoryModel = categoriesDataThree
        .map((e) => SubCategoryModel(
              category: e['category'],
              image: e['image'],
              isSelected: e['isSelected'],
              name: e['name'],
            ))
        .toList();
    update();
  }

/* -------------------------------------------------------------------------- */
/*                      update selection for subcategory                      */
/* -------------------------------------------------------------------------- */
  updatesubCategorySelection(String name) {
    for (var i = 0; i < subCategoryModel.length; i++) {
      if (subCategoryModel[i].name == name) {
        if (!subCategoryModel[i].isSelected) {
          userSubCategory.add(subCategoryModel[i]
              .name); //now not user heading now user categories
        } else {
          userSubCategory
              .removeWhere((element) => element == subCategoryModel[i].name);
        }
        subCategoryModel.setAll(i, [
          //here also use categories
          SubCategoryModel(
              image: subCategoryModel[i].image,
              name: subCategoryModel[i].name,
              isSelected: subCategoryModel[i].isSelected ? false : true,
              category: subCategoryModel[i].category)
        ]);
      }
      update();
    }
  }
/* -------------------------------------------------------------------------- */
/*                               update slection    for category                           */
/* -------------------------------------------------------------------------- */

  updateSelection(String name, String heading) {
    for (var i = 0; i < subCategory.length; i++) {
      if (subCategory[i].name == name && subCategory[i].heading == heading) {
        if (!subCategory[i].isSelected) {
          userCategory.add(
              subCategory[i].name); //now not user heading now user categories
        } else {
          userCategory.removeWhere((element) => element == subCategory[i].name);
        }
        subCategory.setAll(i, [
          //here also use categories
          Category(
              image: subCategory[i].image,
              name: subCategory[i].name,
              isSelected: subCategory[i].isSelected ? false : true,
              heading: subCategory[i].heading)
        ]);
        update();
      }
    }
  }
/* -------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
/*                                load headings                               */
/* -------------------------------------------------------------------------- */

  loadData() {
    categories = categoriesData
        .map((item) => Heading(
            name: item['name'],
            numOfCourses: item['courses'],
            image: item['image'],
            isSelected: item['isSelected']))
        .toList();
    update();
  }

  var categoriesDataThree = [
    {
      "isSelected": false,
      "name": "Dogs",
      'category': "Mammals",
      'image': "assets/images/dogs.jpg"
    },
    {
      "isSelected": false,
      "name": "Cats",
      'category': "Mammals",
      'image': "assets/images/cats.jpg"
    },
    {
      "isSelected": false,
      "name": "Horses",
      'category': "Mammals",
      'image': "assets/images/horse.jpg"
    },
    {
      "isSelected": false,
      "name": "Monkey",
      'category': "Mammals",
      'image': "assets/images/monkey.jpg"
    },
    {
      "isSelected": false,
      "name": "Bears",
      'category': "Mammals",
      'image': "assets/images/bear.jpg"
    },
    {
      "isSelected": false,
      "name": "Kangaroos",
      'category': "Mammals",
      'image': "assets/images/kangro.jpg"
    },
    {
      "isSelected": false,
      "name": "Camels",
      'category': "Mammals",
      'image': "assets/images/camel.jpg"
    },
    {
      "isSelected": false,
      "name": "Dolphins",
      'category': "Mammals",
      'image': "assets/images/dolphin.jpg"
    },
    {
      "isSelected": false,
      "name": "Sloths",
      'category': "Mammals",
      'image': "assets/images/dolphin.jpg"
    },
    {
      "isSelected": false,
      "name": "Lions",
      'category': "Mammals",
      'image': "assets/images/dolphin.jpg"
    },
    {
      "isSelected": false,
      "name": "Tigers",
      'category': "Mammals",
      'image': "assets/images/tiger.jpg"
    },
    {
      "isSelected": false,
      "name": "Pigs",
      'category': "Mammals",
      'image': "assets/images/pigs.jpg"
    },
    {
      "isSelected": false,
      "name": "Giraffes",
      'category': "Mammals",
      'image': "assets/images/giraafe.jpg"
    },
    {
      "isSelected": false,
      "name": "Comedy",
      'category': "Actor/Actresses",
      'image': "assets/images/Comedy.jpg"
    },
    {
      "isSelected": false,
      "name": "Romance",
      'category': "Actor/Actresses",
      'image': "assets/images/romance.jpg"
    },
    {
      "isSelected": false,
      "name": "Comedy",
      'category': "Actor/Actresses",
      'image': "assets/images/photography.png"
    },
    {
      "isSelected": false,
      "name": "Romance",
      'category': "Actor/Actresses",
      'image': "assets/images/ux_design.png"
    },
    {
      "isSelected": false,
      "name": "ThirdPhotoshop",
      'category': "Children Literature",
      'image': "assets/images/ux_design.png"
    },
    {
      "isSelected": false,
      "name": "ForthPhotoshop",
      'category': "Children Literature",
      'image': "assets/images/ux_design.png"
    },
    {
      "name": "Business",
      'category': "Children Literature",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Business",
      'category': "Picture",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Business",
      'category': "Clickable",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Business",
      'category': "Shop",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Literature",
      'category': "Online Store",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
  ];
  //sub intrest
  var categoriesDataTwo = [
    {
      "isSelected": false,
      "name": "Children Literature",
      'heading': "Literature",
      'image': "assets/images/imagetwo.jpg"
    },
    {
      "isSelected": false,
      "name": "Graphics1",
      'heading': "UX Design",
      'image': "assets/images/ux_design.png"
    },
    {
      "isSelected": false,
      "name": "Graphicssssss",
      'heading': "Photography",
      'image': "assets/images/ux_design.png"
    },
    {
      "isSelected": false,
      "name": "Graphics2",
      'heading': "Photography",
      'image': "assets/images/ux_design.png"
    },
    {
      "isSelected": false,
      "name": "Detective Fiction",
      'heading': "Literature",
      'image': "assets/images/detectivenew.png"
    },
    {
      "isSelected": false,
      "name": "Photoshop",
      'heading': "UX Design",
      'image': "assets/images/photography.png"
    },
    {
      "name": "Fantasy",
      'heading': "Literature",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Horror",
      'heading': "Literature",
      'image': "assets/images/horror.png",
      "isSelected": false,
    },
    {
      "name": "Romantic Novel",
      'heading': "Literature",
      'image': "assets/images/roses.jpg",
      "isSelected": false,
    },
    {
      "name": "Picture",
      'heading': "Photoraphy",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Clickable",
      'heading': "Photoraphy",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Shop",
      'heading': "Business",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Online Store",
      'heading': "Business",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Actor/Actresses",
      'heading': "Celebrities",
      'image': "assets/images/actor.jpg",
      "isSelected": false,
    },
    {
      "name": "Singers",
      'heading': "Celebrities",
      'image': "assets/images/singer.jpg",
      "isSelected": false,
    },
    {
      "name": "Businessmen",
      'heading': "Celebrities",
      'image': "assets/images/business.jpg",
      "isSelected": false,
    },
    {
      "name": "Athletes",
      'heading': "Celebrities",
      'image': "assets/images/athelete1.jpg",
      "isSelected": false,
    },
    {
      "name": "Mammals",
      'heading': "Animals",
      'image': "assets/images/mammals.jpg",
      "isSelected": false,
    },
    {
      "name": "Reptiles",
      'heading': "Animals",
      'image': "assets/images/reptile.jpg",
      "isSelected": false,
    },
    {
      "name": "Fishes",
      'heading': "Animals",
      'image': "assets/images/fishes.jpg",
      "isSelected": false,
    },
    {
      "name": "Amphibians",
      'heading': "Animals",
      'image': "assets/images/amphabians.jpg",
      "isSelected": false,
    },
    {
      "name": "Africa",
      'heading': "Travelling",
      'image': "assets/images/amphabians.jpg",
      "isSelected": false,
    },
    {
      "name": "Asia",
      'heading': "Travelling",
      'image': "assets/images/amphabians.jpg",
      "isSelected": false,
    },
    {
      "name": "Australia",
      'heading': "Travelling",
      'image': "assets/images/amphabians.jpg",
      "isSelected": false,
    },
    {
      "name": "Europe",
      'heading': "Travelling",
      'image': "assets/images/amphabians.jpg",
      "isSelected": false,
    },
    {
      "name": "America",
      'heading': "Travelling",
      'image': "assets/images/amphabians.jpg",
      "isSelected": false,
    },
  ];
  //heading
  var categoriesData = [
    {
      "isSelected": false,
      "name": "Literature",
      'courses': "17",
      'image': "assets/images/marketing.png"
    },
    {
      "isSelected": false,
      "name": "Celebrities",
      'courses': "25",
      'image': "assets/images/ux_design.png"
    },
    {
      "isSelected": false,
      "name": "History",
      'courses': "13",
      'image': "assets/images/photography.png"
    },
    {
      "name": "Animals",
      'courses': "17",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Travelling",
      'courses': "17",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Food",
      'courses': "17",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
    {
      "name": "Science & Technology",
      'courses': "17",
      'image': "assets/images/business.png",
      "isSelected": false,
    },
  ];
}
