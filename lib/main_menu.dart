import 'package:flutter/material.dart';
import 'package:phish_net/Info_Pages/info_AnglerPhishing.dart';
import 'package:phish_net/Info_Pages/info_EmailPhishing.dart';
import 'package:phish_net/Info_Pages/info_Smishing.dart';
import 'package:phish_net/Info_Pages/info_SpearPhishing.dart';
import 'package:phish_net/Info_Pages/info_Vishing.dart';
import 'package:phish_net/Info_Pages/info_Whaling.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  List _pages = [
    Info_EmailPhishing(),
    Info_Smishing(),
    Info_Vishing(),
    Info_AnglerPhishing()
  ];
  List<_PhishTypes> types = [
    _PhishTypes(const AssetImage('assets/section_icons/email_cartoon.jpg'),'Email Phishing'),
    _PhishTypes(const AssetImage('assets/section_icons/email_cartoon.jpg'),'Smishing'),
    _PhishTypes(const AssetImage('assets/section_icons/email_cartoon.jpg'),'Vishing'),
    _PhishTypes(const AssetImage('assets/section_icons/email_cartoon.jpg'),'Angler Phishing'),
  ];//https://www.itgovernance.eu/blog/en/the-5-most-common-types-of-phishing-attack
  _makeCards(int i) {
    return Card(
        color: Color(0xFF3872fd),
        child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> _pages[i]));
            },
            child: Container(
              height: 100,
              width: 100,
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Image(image: types[i].asset)),
                  //Image
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      types[i].type,
                      style: TextStyle(color: Colors.white,fontSize: 30),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/BGs/underwater_bg.jpg')
            )
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 45),
                  child: const Text('Phish Net',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                ),
                //TITLE WIDGET
                Container(
                  width: size.width,
                  height: 685,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFF6495ed),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                    )
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text('What Is Phishing?',
                                style: TextStyle(
                                  fontSize: 25
                                ),
                              ),
                            ),
                            //Title
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text('Phishing is a type of social engineering attack where a malicious party attempts to trick the user into performing malicious actions on their devices, such as downloading a file, clicking on a link, putting details into weird webpages using tools & techniques to make it all seem legitimate, these can come in the form of emails, text messages, on websites or even via social media all with the intent to gain access to the user’s data or to the device and connected network.',
                                textAlign: TextAlign.center,
                                  ),
                            ),
                            Container(
                              child: Text('https://www.ncsc.gov.uk/guidance/phishing',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black54
                                ),
                              ),
                            ), //REF

                          ],
                        )
                      ),
                      //SECTION 1
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)
                            )
                        ),
                        margin: EdgeInsets.only(top: 5),
                        height: 470,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10,bottom: 5),
                              child: Text('Types of Phishing Attacks',
                                style: TextStyle(fontSize: 25
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(fit: BoxFit.fill,
                                        image: AssetImage('assets/BGs/ocean_moving_bg.gif')),
                                  ),
                                  child: ListView.builder(
                                      itemCount: types.length,
                                      itemBuilder: (BuildContext context, int i){
                                        return _makeCards(i);
                                      }),
                                )
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class _PhishTypes {
  AssetImage asset;
  String type;
  _PhishTypes(this.asset,this.type);
}
