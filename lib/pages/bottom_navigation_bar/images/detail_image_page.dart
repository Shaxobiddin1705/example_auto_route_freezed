import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'WrapperImagesR')
class WrapperImages extends AutoRouter with AutoRouteWrapper {
  const WrapperImages({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

@RoutePage()
class DetailImagePage extends StatelessWidget {
  final String image;

  const DetailImagePage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.contain,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
