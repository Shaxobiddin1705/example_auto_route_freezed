import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:example_auto_route/blocs/home/home_bloc.dart';
import 'package:example_auto_route/pages/models/user_model/user_model.dart';
import 'package:example_auto_route/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent.started()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Auto Route Example')),
        body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              return context.read<HomeBloc>().add(const HomeEvent.started());
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: state.when(
                initial: () => const Text('There are no users yet', style: TextStyle(fontSize: 18)),
                loading: () =>
                    SizedBox(height: MediaQuery.of(context).size.height, child: const Center(child: CircularProgressIndicator())),
                loaded: (User user) => Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    Center(
                        child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: user.picture.large,
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            CircularProgressIndicator(value: downloadProgress.progress),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                    )),
                    const SizedBox(height: 24),
                    _text(title: 'Full Name', text: '${user.name.title} ${user.name.first} ${user.name.last}'),
                    const SizedBox(height: 12),
                    _text(title: 'Gender', text: user.gender),
                    const SizedBox(height: 12),
                    _text(title: 'Email', text: user.email),
                    const SizedBox(height: 12),
                    _text(title: 'Phone number', text: user.phone),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        context.router.push(const MainRoute());
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 46),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      child: const Text('Checking BottomNavigationBar'),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _text({required String title, required String text}) {
    return RichText(
        text: TextSpan(text: '$title:  ', style: const TextStyle(fontSize: 16, color: Colors.amber), children: [
      TextSpan(text: text, style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600))
    ]));
  }
}
