import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourguid/Kasragod.dart';
import 'package:tourguid/loginpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Login(),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
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
      body: GridView.count(
        crossAxisCount: 3, // Number of columns
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.news9live.com/wp-content/uploads/2024/03/Kasaragod-Thiruvananthapuram-Vande-Bharat-Express-pic.png"),
                fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
              child: SizedBox
                (
                  height: 500,
                  width: 500,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dis1(),));
                  }, child: Text('Kasaragod',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.squarespace-cdn.com/content/v1/53172b1be4b0cc8a5401db4a/1579541521814-XDSXYFO4W38XFM9RJXL9/Kizzhuna+Beach+in+Kannur%2C+Kerala"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Kannur',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://s3.india.com/wp-content/uploads/2024/06/10-Must-Do-Activities-in-Wayanad.jpg?impolicy=Medium_Widthonly&w=700"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Wayanad',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://media.assettype.com/tnm%2Fimport%2Fsites%2Fdefault%2Ffiles%2Fimages%2FSM_Street.jpg"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Kozhikode',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://media.licdn.com/dms/image/C4E12AQHycF0ZBmL3kA/article-inline_image-shrink_1000_1488/0/1520211863952?e=1724284800&v=beta&t=R1wHmCTQT0CwrmRF4w0RqaKMsSvwxy13sNeRPLHrgXU"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Malappuram',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://5.imimg.com/data5/TV/VL/GLADMIN-3090800/palakkad-tour-package-500x500.png"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Palakkad',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://static.theprint.in/wp-content/uploads/2018/08/2018_8img10_Aug_2018_PTI8_10_2018_000227B-e1534139417729.jpg"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Idukki',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.deccanherald.com/deccanherald%2F2024-04%2F65575ceb-6ac0-4418-bbeb-4be841295b38%2Ffile7v2h8yw8dqc74vdc1dr.jpg?rect=0%2C9%2C975%2C512&w=1200&ar=40%3A21&auto=format%2Ccompress&ogImage=true&mode=crop"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Thrissur',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Kochi%2C_Fishing_nets_at_sunset%2C_Kerala%2C_India.jpg"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Ernakulam',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://fastly.4sqi.net/img/general/600x600/44968197_pWIS_Ik8xmsEy15FCtpWSDeLDWZutHyeWgKDXLaAZPs.jpg"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Kottayam',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://live.staticflickr.com/7130/7560524690_d1903e2c8e_b.jpg"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Pathanamthitta',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://lp-cms-production.imgix.net/2019-06/GettyImages-477678650_high.jpg?fit=crop&q=40&sharp=10&vib=20&auto=format&ixlib=react-8.6.4"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Alappuzha',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/9c/f4/af/worlds-largest-bird-sculpture.jpg?w=500&h=500&s=1"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('Kollam',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://assets.telegraphindia.com/telegraph/2023/Apr/1681815094_1024px-napier_museum_thiruvanant.jpg"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Text('thiruvananthapuram',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))))
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
    "https://cdn-icons-png.flaticon.com/512/6213/6213814.png"),
    opacity: 0.5,
    fit: BoxFit.none,),
              borderRadius: BorderRadius.circular(12),
              color: Colors.greenAccent,
            ),
            child: Center(
                child: SizedBox
                  (
                    height: 500,
                    width: 500,
                    child: TextButton(onPressed: (){}, child: Padding(
                      padding: const EdgeInsets.only(top: 230),
                      child: Column(
                        children: [
                          Text('About :-',style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
                          Text('EXCURSIA',style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )))
            ),
          ),
        ],
      ),
    );
  }
}
