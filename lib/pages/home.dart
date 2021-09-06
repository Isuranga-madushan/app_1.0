import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/about.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  static const routeName = "/home";
  final Function(bool)? toggleDarkMode;
  final bool? isDark;
  const Home({Key? key,  this.toggleDarkMode, this.isDark }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('Isuranga Madushan',style: TextStyle(fontSize:30 ),) ,

          actions: [
            Switch(value: isDark ?? false, onChanged: toggleDarkMode)
          ],

        ),


        body: Column(


            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),

              Image(image: AssetImage("assets/image/12.png"),
                width: 150,
              ),

              Text("ආයුබෝවන්!",style: GoogleFonts.allura(fontSize: 25)),
              SizedBox(height: 15,),
              Text("Hello New Town!",style: GoogleFonts.allura(fontSize: 23)
              ),
              ElevatedButton(
                  onPressed: () async {

                    String text = await Navigator.of(context).pushNamed(About.routeName,
                        arguments: AboutArguments(name: "Bandara")) as String;

                    print(text);
                  },
                  child: SizedBox(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.ac_unit),
                        Text("About"),
                      ],
                    ),
                  ),

              ),
            ],
          ),
        );

  }
}
