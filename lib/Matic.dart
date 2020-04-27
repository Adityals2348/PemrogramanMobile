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
    namaBarang: "Master Rem Brembo Vario",
    imgUrl:
        'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//105/MTA-4749891/ktc_ktc_racing_cnc_master_rem_kanan_set_kopling_manual_for_motor_vario_125_-_vario_150_fi_esp_-_hitam_full05_nm881r51.jpg',
  ),
  TopListBarang(
    namaBarang: "Speedometer NMax",
    imgUrl:
        'https://pertamax7.com/wp-content/uploads/2019/08/Speedometer-Yamaha-NMAX-ABS-2015-Odometer.jpg',
  ),
  TopListBarang(
    namaBarang: "Speedometer Scoopy",
    imgUrl:
        'https://s4.bukalapak.com/img/4030522403/w-1000/Speedometer_Scoopy_eSP_2017.jpg',
  ),
  TopListBarang(
    namaBarang: "Stop Lamp Nmax",
    imgUrl:
        'https://s2.bukalapak.com/img/2064887491/w-1000/Stop_Lamp_Nmax_Bullaes.jpeg',
  ),
  TopListBarang(
    namaBarang: "Spion Scoopy",
    imgUrl:
        'https://s4.bukalapak.com/img/9550866752/w-1000/Kaca_spion_Scoopy.jpg',
  ),
];
