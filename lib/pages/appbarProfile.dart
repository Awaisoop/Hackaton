import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackaton/pages/chat_page.dart';
import 'package:hackaton/pages/login_page.dart';

class ProfileApp extends StatelessWidget implements PreferredSizeWidget {
  @override
  final String assetName = 'assets/img/logout.svg';

  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        child: Container(
            height: 200,

            color:Color(0xff3E3E3E),

            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child:InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> chat_page()));

                    },
                    child: Icon(Icons.arrow_back,size: 40,color: Colors.white,),
                  )


                ),

                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Container(
                  width: 60,
                  height: 40,
                  decoration: new BoxDecoration(
                      color: Colors.green, //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(40.0),
                          bottomLeft: const  Radius.circular(40.0))
                  ),
                  child: Center(

                    child: Container(
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login_page()));

                        },
                        child:SvgPicture.asset(
                          assetName,
                          color: Colors.white,
                        )
                      ),
                    )
                  ),
                ),
              ],
            )

        ),
        clipper: BottomWaveClipper(),
      ),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 5.45, size.height - 10);
    var firstEndPoint = Offset(size.width / 3.45, size.height - 15);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width / 1.45, size.height - 40);
    var secondEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}