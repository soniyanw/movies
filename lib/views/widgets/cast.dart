import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/cast.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class CastPage extends StatelessWidget {
  const CastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BuiltList<Cast>? castdetails = context.read<AppViewModel>().state.castlist;

    return Container(
      height: 120.0,
      child: new ListView.builder(
        itemCount: castdetails?.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Container(
              width: 100,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextUsed(castdetails![index].name ?? '')),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://image.tmdb.org/t/p/w500/" +
                          castdetails[index].profile_path.toString(),
                    ),
                    fit: BoxFit.fitWidth),
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
    ;
  }
}
