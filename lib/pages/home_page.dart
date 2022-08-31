import 'package:flutter/material.dart';
import 'package:wisata_jateng/models/wisata.dart';
import 'package:wisata_jateng/pages/detail_page.dart';
import 'package:wisata_jateng/theme.dart';

// ignore_for_file: prefer_const_constructors

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wisata Jawa Tengah',
          style: white1Textstyle.copyWith(
            fontSize: 28,
            fontWeight: bold,
          ),
        ),
        backgroundColor: backgroundColor1,
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return MobilePage();
          } else if (constraints.maxWidth <= 800) {
            return WebsitePgae(
              gridCount: 2,
            );
          } else if (constraints.maxWidth <= 1280) {
            return WebsitePgae(
              gridCount: 3,
            );
          } else {
            return WebsitePgae(gridCount: 4);
          }
        },
      ),
      backgroundColor: backgroundColor2,
    );
  }
}

class MobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TempatWisata wisata = tempatWisata[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(
                wisata: wisata,
              );
            }));
          },
          child: Center(
            child: Container(
              width: 300,
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor3,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          15,
                        ),
                      ),
                      child: Image.asset(
                        wisata.gambar,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(
                        12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            wisata.nama,
                            style: black2Textstyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            wisata.lokasi,
                            style: black2Textstyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            wisata.deskripsi,
                            style: black2Textstyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: tempatWisata.length,
    );
  }
}

class WebsitePgae extends StatelessWidget {
  final int gridCount;
  WebsitePgae({required this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: tempatWisata.map(
            (wisata) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(
                      wisata: wisata,
                    );
                  }));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: white1eColor,
                      width: 4,
                    ),
                    color: backgroundColor3,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: ListView(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        child: Image.asset(
                          wisata.gambar,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(
                          12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              wisata.nama,
                              style: black2Textstyle.copyWith(
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              wisata.lokasi,
                              style: black2Textstyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              wisata.deskripsi,
                              style: black2Textstyle.copyWith(
                                fontWeight: medium,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
