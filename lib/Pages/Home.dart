import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_app/Controllers/MovieController.dart';
import 'package:get/get.dart';
import 'package:movie_app/Const/Constant.dart' as cons;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieController movieController = Get.put(MovieController());

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 414.0,
            height: 736.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('images/cover.jpg'),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.79), BlendMode.dstIn),
              ),
              border: Border.all(width: 1.0, color: const Color(0xc9707070)),
            ),
          ),
          Container(
            width: 414.0,
            height: 736.0,
            decoration: BoxDecoration(
              color: const Color(0xa3322f2f),
              border: Border.all(width: 1.0, color: const Color(0xa3707070)),
            ),
          ),
          Container(
            child: Obx(
              () => ListView.builder(
                  padding: EdgeInsets.only(bottom: 200),
                  itemCount: movieController.movieList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Transform.translate(
                      offset: Offset(49.0, 186.0),
                      child: Container(
                        margin: EdgeInsets.all(15),
                        width: 250.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.0),
                          image: new DecorationImage(
                            image: NetworkImage(
                              cons.IMAGE_URL +
                                  movieController.movieList[index].posterPath,
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xfff9f4f4),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
