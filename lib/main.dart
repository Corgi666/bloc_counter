import 'package:bloc_basic/page/bloc/couter_a/bloc/couter_a_bloc.dart';
import 'package:bloc_basic/page/bloc/couter_b/bloc/couter_b_bloc.dart';
import 'package:bloc_basic/page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BlocProvider> blocList = [
      BlocProvider<CouterABloc>(create: (context) => CouterABloc()),
    ];
    return MultiBlocProvider(
      providers: blocList,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
    );
  }
}
