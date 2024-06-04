import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';

class SliversAppBar extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Padding(padding: EdgeInsets.all(8),
    child:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: most_color,
            expandedHeight: 200.0,
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('appppppppppp'),
            ),
          )
      ],
    ),

    );
  }
}
