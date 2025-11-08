import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/features/users/domain/model/user_model.dart';
import 'package:flutter_tutorial/features/users/presentation/bloc/users_bloc.dart';
import 'package:flutter_tutorial/features/users/presentation/bloc/users_event.dart';
import 'package:flutter_tutorial/features/users/presentation/bloc/users_state.dart';

import 'core/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => getIt<UsersBloc>()..add(GetUsersEvent()),
        child: Scaffold(
          appBar: AppBar(title: const Text('Users')),
          body: BlocBuilder<UsersBloc, UsersState>(
            builder: (context, state) {
              if (state.status == UsersStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.status == UsersStatus.error) {
                return Center(child: Text(state.errorMessage ?? ''));
              }
              if (state.status == UsersStatus.success) {
                return ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return ListTile(
                      title: Text(user.name),
                      subtitle: Text(user.email),
                    );
                  },
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}