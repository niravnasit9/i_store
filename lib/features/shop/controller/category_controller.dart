import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/data/repositories/categories/category_repository.dart';
import 'package:yt_ecommerce_admin_panel/features/personalization/models/category_model.dart';
import 'package:yt_ecommerce_admin_panel/utils/popups/loaders.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  /// Load Category data
  Future<void> fetchCategories() async {
    try {
      // Show Loader while loading categories
      isLoading.value = true;

      // Fetch categories from data source(Firebase,API)
      final categories = await _categoryRepository.getAllCategories();

      // Update the Categories list
      allCategories.assignAll(categories);

      // Filter Featured categories
      featuredCategories.assignAll(allCategories.where(
              (category) => category.isFeatured && category.parentId.isEmpty)
          .take(8)
          .toList());
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      /// Remove Loader
      isLoading.value = false;
      }
    }

    /// Load selected category data

    /// Get Category or Sub-Category Products.
  }
