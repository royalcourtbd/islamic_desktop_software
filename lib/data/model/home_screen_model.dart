import 'package:islamic_desktop_software/core/assets/svg_path.dart';

class HomeScreenModel {
  final String title;

  final String image;

  HomeScreenModel({
    required this.title,
    required this.image,
  });
}

List<HomeScreenModel> homeScreenModelList = [
  HomeScreenModel(
    title: 'Dua & Ruqyah',
    image: SvgPath.icDuaApp,
  ),
  HomeScreenModel(
    title: 'Al Hadith',
    image: SvgPath.icHadithApp,
  ),
  HomeScreenModel(
    title: 'Quran Mazid',
    image: SvgPath.icQuranApp,
  ),
].reversed.toList();
