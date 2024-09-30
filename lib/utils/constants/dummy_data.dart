import 'package:yt_ecommerce_admin_panel/features/personalization/models/category_model.dart';
import 'package:yt_ecommerce_admin_panel/features/shop/models/banner_model.dart';
import 'package:yt_ecommerce_admin_panel/routes/routes.dart';
import 'image_strings.dart';

class TDummyData {
  /// Users
  // static final List<UserModel> user = UserModel(
  //     firstName: 'Nirav',
  //     lastName: 'Nasit',
  //     email: 'niravnasit0351@gmail.com',
  //     phoneNumber: '9173542299',
  //     profilePicture: TImages.user,
  //     addresses: [AddressModel(
  //
  //     )]) as List<UserModel>;

  /// List of all Categories
  static final List<BannerModel> banners = [
    BannerModel(
        imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
    BannerModel(
        imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
    BannerModel(
        imageUrl: TImages.banner3,
        targetScreen: TRoutes.favourites,
        active: true),
    BannerModel(
        imageUrl: TImages.banner4, targetScreen: TRoutes.search, active: true),
    BannerModel(
        imageUrl: TImages.banner5,
        targetScreen: TRoutes.settings,
        active: true),
    BannerModel(
        imageUrl: TImages.banner6,
        targetScreen: TRoutes.userAddress,
        active: true),
    BannerModel(
        imageUrl: TImages.banner8,
        targetScreen: TRoutes.checkout,
        active: false),
  ];

  /// List of all Categories
  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', image: TImages.sportIcon, name: 'Sports', isFeatured: true),
    CategoryModel(
        id: '5',
        image: TImages.furnitureIcon,
        name: 'Furniture',
        isFeatured: true),
    CategoryModel(
        id: '2',
        image: TImages.electronicsIcon,
        name: 'Electronics',
        isFeatured: true),
    CategoryModel(
        id: '3', image: TImages.clothIcon, name: 'Clothes', isFeatured: true),
    CategoryModel(
        id: '4', image: TImages.animalIcon, name: 'Animals', isFeatured: true),
    CategoryModel(
        id: '6', image: TImages.shoeIcon, name: 'Shoes', isFeatured: true),
    CategoryModel(
        id: '7',
        image: TImages.cosmeticsIcon,
        name: 'Cosmetics',
        isFeatured: false),
    CategoryModel(
        id: '14',
        image: TImages.jeweleryIcon,
        name: 'Jewelery',
        isFeatured: true),

    ///subcategories
    CategoryModel(
        id: '8',
        image: TImages.sportIcon,
        name: 'Sport Shoes',
        parentId: '1',
        isFeatured: false),
    CategoryModel(
        id: '9',
        image: TImages.sportIcon,
        name: 'Track suits',
        parentId: '1',
        isFeatured: false),
    CategoryModel(
        id: '10',
        image: TImages.sportIcon,
        name: 'Sports Equipments',
        parentId: '1',
        isFeatured: false),

    //furniture
    CategoryModel(
        id: '11',
        image: TImages.furnitureIcon,
        name: 'Bedroom furniture',
        parentId: '5',
        isFeatured: false),
    CategoryModel(
        id: '12',
        image: TImages.furnitureIcon,
        name: 'Kitchen furniture',
        parentId: '5',
        isFeatured: false),
    CategoryModel(
        id: '13',
        image: TImages.furnitureIcon,
        name: 'Office furniture',
        parentId: '5',
        isFeatured: false),

    //electronics
    CategoryModel(
        id: '14',
        image: TImages.electronicsIcon,
        name: 'Laptop',
        parentId: '2',
        isFeatured: false),
    CategoryModel(
        id: '15',
        image: TImages.electronicsIcon,
        name: 'Mobile',
        parentId: '2',
        isFeatured: false),

    CategoryModel(
        id: '16',
        image: TImages.clothIcon,
        name: 'Shirts',
        parentId: '3',
        isFeatured: false)
  ];
}
