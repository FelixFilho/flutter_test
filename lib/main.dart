import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:prolog_test/data/client/dio.dart';
import 'package:prolog_test/data/repository/tire_repository_interface.dart';
import 'package:prolog_test/data/repository/tire_repository.dart';
import 'package:prolog_test/utils/constants.dart';

import 'tire_list_page/view/tire_list_page.dart';

GetIt example = GetIt.instance;
void main() {
  example.registerLazySingleton<ITireRepository>(
      () => TireRepository(DioClient()));
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const PrologTest());
}

class PrologTest extends StatelessWidget {
  const PrologTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: PrologConstants.softMarine),
        appBarTheme: const AppBarTheme(color: PrologConstants.softMarine),
      ),
      home: const TireListPage(),
    );
  }
}
