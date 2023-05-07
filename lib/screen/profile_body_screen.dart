import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var HurufLightGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      color: const Color.fromARGB(255, 71, 71, 71)
    );
    var HurufTextGray =GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xff484848),
    );
    var HurufTextCardLight = GoogleFonts.poppins(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );
  var HurufTextCardBold = GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
  );
    
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0,
                  offset: Offset(0, 4),
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(20.0)
              ),
            color: Color(0xff484848),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/Najmi.png'),
              radius: 50.0,
            ) ,
          ),
          const Spacer()  ,
          Text(
            'Muhammad Najmi Muhtaram', style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: const Color(0xff484848)
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 88, 238, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(12.0)
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NPM', style: HurufTextCardLight),
                    const Spacer(),
                    Text('065120140', style: HurufTextCardBold),
                    const SizedBox(width: 5.0,),
                    const Icon(Icons.copy, color: Colors.white, size: 18.0,),

                  ],
                ),
                const Divider(color: Colors.white,),
                Row(
                  children: [
                    Text('Kelas', style: HurufTextCardLight,),
                    const Spacer(),
                    Text('Gab C', style: HurufTextCardBold,)
                  ],
                ),
                const Divider(color: Colors.white,),
                Row(
                  children: [
                    Text('Status Keaktifan', style: HurufTextCardLight,),
                    const Spacer(),
                    Text('Aktif', style: HurufTextCardBold,),
                  ],
                ),
                const Divider(color: Colors.white,),
                Row(
                  children: [
                    Text('Program Studi', style: HurufTextCardLight,),
                    const Spacer(),
                    Text('Ilmu Komputer', style: HurufTextCardBold,),
                  ],
                ),
                const Divider(color: Colors.white,),
                Row(
                  children: [
                    Text('Jenjang Pendidikan', style: HurufTextCardLight,),
                    const Spacer(),
                    Text('Sarjana 1', style: HurufTextCardBold,),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right:12.0),
            child: Row(
              children: [
                Text('My Portofolio UI UX DESIGN', style: HurufTextGray,),
              ],
            ),
            ),
            CarouselSlider(
              items: const [
                AssetImage('assets/Profile.png'),
                AssetImage('assets/uiDoctor.png'),
                AssetImage('assets/Profile.jpg'),
                AssetImage('assets/prfl.png'),
                AssetImage('assets/pesanui.png'),
              ].map((Image){
                return Builder(
                  builder: (BuildContext context){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: Image,
                          fit: BoxFit.cover,
                          ),
                      ),
                    );
                  },
                  );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: true,
                enlargeCenterPage: true,
              ),
              )
        ],
      ),
    );
  }
}