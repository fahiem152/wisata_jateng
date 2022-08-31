import 'package:flutter/material.dart';
import 'package:wisata_jateng/models/wisata.dart';
import 'package:wisata_jateng/theme.dart';

class DetailPage extends StatelessWidget {
  final TempatWisata wisata;
  DetailPage({required this.wisata});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints contraints) {
      if (contraints.maxWidth > 800) {
        return DetailWebPage(
          wisata: wisata,
        );
      } else {
        return DetailMobilePage(wisata: wisata);
      }
    });
  }
}

class LikeButton extends StatefulWidget {
  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isLike = !isLike;
        });
      },
      icon: Icon(
        isLike ? Icons.favorite : Icons.favorite_border,
        color: Colors.yellowAccent,
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final TempatWisata wisata;
  DetailMobilePage({required this.wisata});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  child: Image.asset(wisata.gambar),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text(
                          wisata.nama,
                          style: white1Textstyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: LikeButton(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.settings_phone,
                          color: Colors.yellowAccent,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Call',
                          style: white2Textstyle.copyWith(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.yellowAccent,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Route',
                          style: white2Textstyle.copyWith(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.yellowAccent,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Share',
                          style: white2Textstyle.copyWith(
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daerah: ${wisata.lokasi}',
                        style: white2Textstyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Deskripsi: ${wisata.deskripsi}',
                        style: white2Textstyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: wisata.gambarUrls.map(
                      (url) {
                        return Container(
                          margin: EdgeInsets.all(
                            20,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: backgroundColor3,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backgroundColor2.withOpacity(
                  0.5,
                ),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.yellowAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final TempatWisata wisata;
  DetailWebPage({required this.wisata});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 68,
              vertical: 20,
            ),
            child: Center(
              child: Column(children: [
                Text(
                  widget.wisata.nama,
                  style: white1Textstyle.copyWith(
                    fontWeight: bold,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: backgroundColor3,
                                      width: 4,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      widget.wisata.gambar,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Scrollbar(
                                  isAlwaysShown: true,
                                  controller: _scrollController,
                                  child: Container(
                                    height: 150,
                                    padding: EdgeInsets.only(bottom: 16),
                                    child: ListView(
                                      controller: _scrollController,
                                      scrollDirection: Axis.horizontal,
                                      children: widget.wisata.gambarUrls.map(
                                        (url) {
                                          return Container(
                                            margin: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: backgroundColor3,
                                                width: 3,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                url,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        },
                                      ).toList(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),
                              color: backgroundColor1,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LikeButton(),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Daerah: ${widget.wisata.lokasi}',
                                      style: white2Textstyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 28,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Deskripsi: ${widget.wisata.deskripsi}',
                                      style: white2Textstyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 28,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.settings_phone,
                                              color: Colors.yellowAccent,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Call',
                                              style: white2Textstyle.copyWith(
                                                fontSize: 16,
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.send,
                                              color: Colors.yellowAccent,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Route',
                                              style: white2Textstyle.copyWith(
                                                fontSize: 16,
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.share,
                                              color: Colors.yellowAccent,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Share',
                                              style: white2Textstyle.copyWith(
                                                fontSize: 16,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor2.withOpacity(
                0.5,
              ),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.yellowAccent,
              ),
            ),
          )
        ],
      ),
      backgroundColor: backgroundColor2,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
