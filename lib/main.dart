import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GalleryApp(),
  ));
}

class GalleryApp extends StatefulWidget {
  GalleryApp({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _GalleryAppState createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  List image = [
    'https://cdn.mos.cms.futurecdn.net/aqeeKFe77ihnvPYBEwCYCa-1200-80.jpg',
    'https://www.siliconera.com/wp-content/uploads/2020/10/genshin-impact-klee-1.jpg',
    'https://i.pinimg.com/originals/af/2b/52/af2b52d20d45d247c4b899d7b56f2abf.jpg',
    'https://1.bp.blogspot.com/-yHZt-nKZVaA/X-8p74DrnVI/AAAAAAAAGSc/c93Gu1bZNw8LIcq_8r5A8C_Qi2WsJEZmACPcBGAsYHg/w0/venti-genshin-impact-uhdpaper.com-4K-8.2707-wp.thumbnail.jpg',
    'https://www.pockettactics.com/wp-content/uploads/2021/02/genshin-impact-venti-3-900x506.jpg',
    'https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/9ig72cb2bta5vdqf_1602067116.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Gallery Collection',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Search for Image',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          image[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  staggeredTileBuilder: (index) {
                    return new StaggeredTile.count(1, index.isEven ? 1.2 : 2);
                  }),
            )),
          ],
        ),
      ),
    ));
  }
}
