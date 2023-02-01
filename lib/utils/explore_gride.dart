import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreGride extends StatefulWidget {
  const ExploreGride({super.key});

  @override
  State<ExploreGride> createState() => _ExploreGrideState();
}

class _ExploreGrideState extends State<ExploreGride> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget quiltedLayout(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        mainAxisSpacing: 6,
        crossAxisCount: 4,
        crossAxisSpacing: 6,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://source.unsplash.com/random?sign=$index",
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}
