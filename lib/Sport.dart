import 'package:flutter/material.dart';

class Sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SparePart SPORT"),
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
                          content: Text(topListBarang.namaBarang),
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
                                      text: topListBarang.namaBarang,
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
  String namaBarang;
  String imgUrl;

  TopListBarang({this.namaBarang, this.imgUrl});
}

List<TopListBarang> topListBarangs = [
  TopListBarang(
    namaBarang: "Caliper Brembo",
    imgUrl:
        'https://www.z1motorsports.com/includes/modules/kiss_image_thumbnailer/thumbs/1204x903_brembo-n-caliper-6-piston-2-piece-350-380mm-slotted-type-3-red-hi-res_original.jpg',
  ),
  TopListBarang(
    namaBarang: "Shockbreaker Ohlins",
    imgUrl: 'https://cf.shopee.co.id/file/71dc6c6b53e31792ce66b2da99b56ceb',
  ),
  TopListBarang(
    namaBarang: "Steering Damper Ohlins",
    imgUrl:
        'https://s1.bukalapak.com/img/6005473693/w-1000/Steering_Damper_Ohlins_Kawasaki_Ninja_250_2018.jpg',
  ),
  TopListBarang(
    namaBarang: "Spion Rizoma",
    imgUrl:
        'https://s4.bukalapak.com/img/9212961828/w-1000/Spion_Rizoma_Original.jpg',
  ),
  TopListBarang(
    namaBarang: "Selang Rem Hell",
    imgUrl:
        'https://ecs7.tokopedia.net/img/cache/700/product-1/2016/9/23/5615851/5615851_93fefe24-b868-4e19-a6bc-6a0a88ac7935.jpg',
  ),
];
