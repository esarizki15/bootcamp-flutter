import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<String> list = [
    "https://images.saymedia-content.com/.image/t_share/MTc0Mzg2NDA5MDk4OTc4OTUw/animes-like-ansatsu-kyoushitsu.png",
    'https://i.pinimg.com/originals/5a/21/9f/5a219f7764a00e071c68af2fe68a1e23.jpg',
    'https://4.bp.blogspot.com/-FWsh_5SKMe0/Why9AFBVqzI/AAAAAAAAAzs/xuEmjDKaxFsf594CXW_b_EIzY_hQ6ycpwCLcBGAs/s1600/Bungou%2BStray%2BDogs.jpg'
  ];
  Widget banner() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Text(
              "Berita",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (dynamic imgUrl in list)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        child: Image.network(imgUrl),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List beritaData = [
    {
      "img":
          "https://images.saymedia-content.com/.image/t_share/MTc0Mzg2NDA5MDk4OTc4OTUw/animes-like-ansatsu-kyoushitsu.png",
      "title":
          "15 Daerah PPKM Level 4 di Jateng hingga 30 Agustus, Termasuk . . .",
      "date": "24 Agustus 2021",
    },
    {
      "img":
          "https://images.saymedia-content.com/.image/t_share/MTc0Mzg2NDA5MDk4OTc4OTUw/animes-like-ansatsu-kyoushitsu.png",
      "title":
          "15 Daerah PPKM Level 4 di Jateng hingga 30 Agustus, Termasuk . . .",
      "date": "24 Agustus 2021",
    },
    {
      "img":
          "https://images.saymedia-content.com/.image/t_share/MTc0Mzg2NDA5MDk4OTc4OTUw/animes-like-ansatsu-kyoushitsu.png",
      "title":
          "15 Daerah PPKM Level 4 di Jateng hingga 30 Agustus, Termasuk . . .",
      "date": "24 Agustus 2021",
    },
    {
      "img":
          "https://images.saymedia-content.com/.image/t_share/MTc0Mzg2NDA5MDk4OTc4OTUw/animes-like-ansatsu-kyoushitsu.png",
      "title":
          "15 Daerah PPKM Level 4 di Jateng hingga 30 Agustus, Termasuk . . .",
      "date": "24 Agustus 2021",
    },
  ];
  Widget listBerita() {
    return Container(
      child: Column(
        children: [
          for (dynamic data in beritaData)
            Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.grey.shade300, width: 0.5),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      data["title"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Text(
                                      data["date"],
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 65,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(data["img"]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.only(left: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            banner(),
            listBerita(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }
}
