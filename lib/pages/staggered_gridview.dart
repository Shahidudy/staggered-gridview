import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyStaggeredGridview extends StatelessWidget {
  const MyStaggeredGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STAGGERED GRIDVIEW'),
        centerTitle: true,
      ),
      body: MasonryGridView.builder(
          itemCount: 10,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                    image: AssetImage('asset/images/b-${index + 1}.jpg')));
          }),
    );
  }
}
