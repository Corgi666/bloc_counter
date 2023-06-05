import 'package:bloc_basic/page/bloc/couter_a/bloc/couter_a_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CouterABloc, CouterAState>(
          builder: (context, state) {
            return Text('${state.count}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () =>
                context.read<CouterABloc>().add(CounterEvenReset()),
            child: Icon(Icons.restore),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => context.read<CouterABloc>().add(CounterEvenadd()),
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
