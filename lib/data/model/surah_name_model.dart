class SurahNameModel {
  final String number;
  final String name;
  final String meaning;
  final int ayah;
  final String revelation;

  SurahNameModel(
    this.number,
    this.name,
    this.meaning,
    this.ayah,
    this.revelation,
  );
}

List<SurahNameModel> allSurahNameList = [
  SurahNameModel("001", "Al-Fatiha", "The Opening", 7, "Meccan"),
  SurahNameModel("002", "Al-Baqarah", "The Cow", 286, "Medinan"),
  SurahNameModel("003", "Aali Imran", "The Family of Imran", 200, "Medinan"),
  SurahNameModel("004", "An-Nisa", "The Women", 176, "Medinan"),
  SurahNameModel("005", "Al-Ma'idah", "The Table Spread", 120, "Medinan"),
  SurahNameModel("006", "Al-An'am", "The Cattle", 165, "Meccan"),
  SurahNameModel("007", "Al-A'raf", "The Heights", 206, "Meccan"),
  SurahNameModel("008", "Al-Anfal", "The Spoils of War", 75, "Medinan"),
  SurahNameModel("009", "At-Tawbah", "The Repentance", 129, "Medinan"),
  SurahNameModel("010", "Yunus", "Jonah", 109, "Meccan"),
  SurahNameModel("011", "Hud", "Hud", 123, "Meccan"),
  SurahNameModel("012", "Yusuf", "Joseph", 111, "Meccan"),
  SurahNameModel("013", "Ar-Rad", "The Thunder", 43, "Medinan"),
  SurahNameModel("014", "Ibrahim", "Abraham", 52, "Meccan"),
  SurahNameModel("015", "Al-Hijr", "The Rocky Tract", 99, "Meccan"),
];
