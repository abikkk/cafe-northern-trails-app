class MenuItem {
  MenuItem(
      {required this.imagePath,
      required this.stars,
      required this.name,
      required this.time,
      required this.reviews,
      required this.price,
      required this.cook,
      required this.isSpecials,
      required this.isPopular,
      required this.isNewest,
      required this.isMilkBased,
      required this.isCocktail,
      required this.hasAlcohol,
      required this.isDrink,
      this.isFavorite = false});

  final String imagePath;
  final int stars;
  final String name;
  final String time;
  final String reviews;
  final double price;
  final String cook;
  final bool isSpecials;
  final bool isPopular;
  final bool isNewest;
  final bool isMilkBased;
  final bool isCocktail;
  final bool hasAlcohol;
  final bool isDrink;
  final bool isFavorite;

// MenuItem MenuItemFromJson(String str) => MenuItem.fromJson(json.decode(str));
// String MenuItemToJson(MenuItem data) => json.encode(data.toJson());

  // factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
  //       smallImagePath: json["Small_Image_Path"],
  //       mediumImagePath: json["Medium_Image_Path"],
  //       largeImagePath: json["Large_Image_Path"],
  //       replicationCounter: json["Replication_Counter"],
  //       eventAppImageBasePath: json["EventApp_Image_Base_Path"],
  //       eventAppLargeImagePath: json["EventApp_Large_Image_Path"],
  //       mobileAppSalesCode: json["MobileApp_Sales_Code"],
  //       eventAppRepCounter: json["EventApp_Rep_Counter"],
  //     );

  // Map<String, dynamic> toJson() => {
  //       "Small_Image_Path": smallImagePath,
  //       "Medium_Image_Path": mediumImagePath,
  //       "Large_Image_Path": largeImagePath,
  //       "Replication_Counter": replicationCounter,
  //       "EventApp_Image_Base_Path": eventAppImageBasePath,
  //       "EventApp_Large_Image_Path": eventAppLargeImagePath,
  //       "MobileApp_Sales_Code": mobileAppSalesCode,
  //       "EventApp_Rep_Counter": eventAppRepCounter,
  //     };
}
