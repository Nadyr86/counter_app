import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_1/presentation/pages/my_first/cubit/counter_cubit.dart';
import 'package:tapshyrma_1/presentation/pages/my_first/cubit/my_first_cubit.dart';
import 'package:tapshyrma_1/presentation/pages/my_first/ui/my_first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MyFirstCubit(0),
          ),
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
        ],
        child: const MyFirstPage(),
      ),
    );
  }
}
