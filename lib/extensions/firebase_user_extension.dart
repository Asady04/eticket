part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser{
  User convertToUser({
    String name = "Fayyadh",
    List<String> selectedGenres = const [],
    String selectedLanguage = "English",
    int balance = 100000
  }) => User(this.uid, this.email,
    name: name,
    balance: balance,
    selectedGenres: selectedGenres,
    selectedLanguage: selectedLanguage
  );
}