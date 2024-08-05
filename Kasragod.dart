import 'package:flutter/material.dart';

class Dis1 extends StatefulWidget {
  const Dis1({Key? key}) : super(key: key);

  @override
  State<Dis1> createState() => _Dis1State();
}

class _Dis1State extends State<Dis1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EXCURSIA',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        shadowColor: Colors.black,
        backgroundColor: Colors.greenAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, size: 40, color: Colors.white),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://lh3.googleusercontent.com/p/AF1QipM1T-zpU91XIk3hP2UvJQeu5VPNUcTIZeBOHcV6=s1360-w1360-h1020"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox(
                    height: 200,
                    width: 2500,
                    child: TextButton(onPressed: (){
                      showDialog(context: context, builder:(context) => AlertDialog(
                        backgroundColor:
                        Colors.white.withOpacity(0.9),
                        content: Column(
                          children: [
                            Container(
                              height: 400,
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://lh3.googleusercontent.com/p/AF1QipPaLXsdWKQ4X434zl0i1IbI3rWoL1wpwamVd9Uj=s1360-w1360-h1020"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blue,
                              ),
                              ),
                            Text("Chandragiri Fort",style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold)),
                            Text("Chandragiri Fort (Malayalam: ചന്ദ്രഗിരിക്കോട്ട ) is a fort built in the 17th century, situated in Kasaragod District of Kerala, India. This large squarish fort is 150 feet (46 m) above sea level and occupies an area of about seven acres[1] the adjacent to Chandragiri river. The fort is now in ruins.")
                          ],
                        ),
                      ),);
                    }, child: Text('Chandragiri Fort',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://lh3.googleusercontent.com/p/AF1QipMFMq5oAZZXYqfDYGwAv7aa21QEJmG7DohewHvn=s1360-w1360-h1020"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox(
                    height: 200,
                    width: 2500,
                    child: TextButton(onPressed: (){
                      showDialog(context: context, builder:(context) => AlertDialog(
                        backgroundColor:
                        Colors.white.withOpacity(0.9),
                        content: Column(
                          children: [
                            Container(
                              height: 400,
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://lh3.googleusercontent.com/p/AF1QipNpeIgvOwjBW7_hy2q-c-PZs_2m3z0DiVR-WSMH=s1360-w1360-h1020"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blue,
                              ),
                            ),
                            Text("Kasaba Beach Park",style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold)),
                            Text("Nice beach area nearest to Kasaragod. Better accessibility during day time. During evening hours, felt like little deserted. Still a good place to have some relaxation in the sea shore and enjoy the nature")
                          ],
                        ),
                      ),);
                    }, child: Text('Kasaba Beach Park',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
        Container(
          height: 150,
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://lh3.googleusercontent.com/p/AF1QipOkTWZxuudwOwPMcbECrRm2KQ_4gdYeZXB_OIiZ=s1360-w1360-h1020"),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue,
          ),
          child: Center(
              child: SizedBox(
                  height: 200,
                  width: 2500,
                  child: TextButton(onPressed: (){
                    showDialog(context: context, builder:(context) => AlertDialog(
                      backgroundColor:
                      Colors.white.withOpacity(0.9),
                      content: Column(
                        children: [
                          Container(
                            height: 400,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://lh3.googleusercontent.com/p/AF1QipOPhqANTI7tXCJituKe4ay0gkOivPNd-p4eiEhB=s1360-w1360-h1020"),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue,
                            ),
                          ),
                          Text("Kottancheri Hill Station",style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold)),
                          Text("Kottancherry Hills is a group of hills close to the Brahmagiri Hills of Kudagu in Karnataka and within the Western Ghats region in Kasaragod district. It is believed that the hills - Kottancherry mala, Kumban mala, Pannyar mala, and Kanthanppara are in the shape of a fort, hence the name Kottancherry.")
                        ],
                      ),
                    ),);
                  }, child: Text('Kottancheri Hill Station',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
          ),
        ),
        ],
      ),
    );
  }
}
