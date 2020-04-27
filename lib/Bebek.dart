import 'package:flutter/material.dart';

class Bebek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SparePart BEBEK"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "List Barang",
              style: TextStyle(
                fontSize: 45,
              ),
            ),
            SizedBox(height: 70),
            Container(
              height: 250.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: topListBarangs.length,
                itemBuilder: (BuildContext context, int index) {
                  TopListBarang topListBarang = topListBarangs[index];
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(topListBarang.namaDestinasi),
                          duration: Duration(milliseconds: 800),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 8.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              height: 85.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 24.0, left: 5.0),
                                child: RichText(
                                  text: TextSpan(
                                      text: topListBarang.namaDestinasi,
                                      style:
                                          TextStyle(color: Color(0xFF15121C)),
                                      children: [
                                        TextSpan(
                                          text: "\n⭐⭐⭐⭐⭐",
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  child: Image.network(
                                    topListBarang.imgUrl,
                                    fit: BoxFit.cover,
                                    height: 170.0,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Container(
                                    height: 70.0,
                                    width: 130.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopListBarang {
  String namaDestinasi;
  String imgUrl;

  TopListBarang({this.namaDestinasi, this.imgUrl});
}

List<TopListBarang> topListBarangs = [
  TopListBarang(
    namaDestinasi: "Headlamp Jupiter MX",
    imgUrl: 'https://cf.shopee.co.id/file/6d6e00d7edc04924d6f2799133ff40d8',
  ),
  TopListBarang(
    namaDestinasi: "Gear Set Rantai Honda Supra GTR150",
    imgUrl:
        'https://ecs7.tokopedia.net/img/cache/700/product-1/2018/10/25/2062426/2062426_33a53ef9-0b64-4601-8ddc-93b792f0e3e7_960_960.jpg',
  ),
  TopListBarang(
    namaDestinasi: "Speedometer Supra GTR150",
    imgUrl:
        'https://s3.bukalapak.com/img/3856666424/w-1000/speedometer_spidometer_spedometer_supra_gtr_150_K56_original.jpg',
  ),
  TopListBarang(
    namaDestinasi: "Cover Body Kanan Vega ZR",
    imgUrl:
        'https://ecs7.tokopedia.net/img/cache/700/product-1/2018/12/28/4479816/4479816_63384a2a-8ffe-44c0-8110-84b65ba69fee_1728_1728.jpg',
  ),
  TopListBarang(
    namaDestinasi: "Spakbor Depan Jupiter 135",
    imgUrl:
        'https://s1.bukalapak.com/img/1652708462/w-1000/Spakbor_depan_jupiter_mx_new_135.png',
  ),
];
