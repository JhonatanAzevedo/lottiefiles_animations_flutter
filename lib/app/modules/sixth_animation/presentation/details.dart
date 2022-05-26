import 'dart:io';

import 'package:flutter/material.dart';

import 'sixth_animation_page.dart';

class AnimationOneDetails extends StatelessWidget {
  final int? index;

  const AnimationOneDetails({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
              tag: "image$index",
              child: PNetworkImage(images[index!], fit: BoxFit.cover)),
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20.0),
                IconButton(
                  color: Colors.white,
                  icon: Icon(
                      Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                const Spacer(),
                const SizedBox(height: 10.0),
                Hero(
                  tag: "title$index",
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      dummy[index!]["title"],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Hero(
                  tag: "price$index",
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      dummy[index!]['price'],
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PNetworkImage extends StatelessWidget {
  final String? image;
  final BoxFit? fit;
  final double? width, height;
  const PNetworkImage(this.image, {Key? key, this.fit, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image!,
      frameBuilder:  (_, image, loadingBuilder, __) {
    if (loadingBuilder == null) {
      return const SizedBox(
        height: 300,
        child: Center(child: CircularProgressIndicator()),
      );
    }
    return image;
  },
  
    
      // placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      // errorWidget: (context, url, error) => Image.asset('assets/placeholder.jpg',fit: BoxFit.cover,),
      fit: fit,
      width: width,
      height: height,
    );
  }
}
