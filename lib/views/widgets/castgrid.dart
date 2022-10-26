import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies/data/api_service_imp.dart';
import 'package:movies/model/cast.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/castdetails.dart';
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
            child: InkResponse(
              onTap: () async {
                await context
                    .read<AppViewModel>()
                    .getcastdetails_withcredits(castdetails![index].id ?? 0);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CastDetails()));
              },
              child: new Container(
                width: 100,
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: TextUsed(castdetails![index].name ?? '')),
                decoration: BoxDecoration(
                  image: APIServiceImp()
                      .getimage(castdetails[index].profile_path.toString()),
                ),
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
