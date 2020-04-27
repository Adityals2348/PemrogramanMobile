import 'package:flutter/material.dart';

class Matic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SparePart MATIC"),
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
                                  child: Image.asset(
                                    topListBarang.imgAsset,
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
  String imgAsset;

  TopListBarang({this.namaBarang, this.imgAsset});
}

List<TopListBarang> topListBarangs = [
  TopListBarang(
    namaBarang: "Master Rem Brembo Vario",
    imgAsset: 'assets/bremboVario.jpg',
  ),
  TopListBarang(
    namaBarang: "Speedometer NMax",
    imgAsset: 'assets/speedonmax.jpg',
  ),
  TopListBarang(
    namaBarang: "Speedometer Scoopy",
    imgAsset: 'assets/speedoscooy.jpg',
  ),
  TopListBarang(
    namaBarang: "Stop Lamp Nmax",
    imgAsset: 'assets/stopNmax.jpg',
  ),
  TopListBarang(
    namaBarang: "Spion Scoopy",
    imgAsset: 'assets/spionscoopy.jpg',
  ),
];
