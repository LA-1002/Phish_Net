import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Info_EmailPhishing extends StatefulWidget {
  const Info_EmailPhishing({Key? key}) : super(key: key);

  @override
  State<Info_EmailPhishing> createState() => _Info_EmailPhishingState();
}

class _Info_EmailPhishingState extends State<Info_EmailPhishing> {
  late VideoPlayerController _controller;
  late Future<void> _initaliseVideo;
  List<String> heading = [
    'What is it?',
    'Types',
    'Example Email',
    'Signs',
    'Example Attack',
    'References'
  ];
  List<String> types = [
    ' + Phishing',
    ' + Spear Phishing',
    ' + Whaling'
  ];
  List<String> typesInfo = [
    'Sending out a generic email to lots of people hoping that one or more people will trust the email[3]',
    'A more sophisticated version of phishing where the attacker has researched the target and has crafted the email to make it seem more legitimate by including information relevant to the target, these attacks often use email addresses similar to one familiar to the target to further convince them that this is a genuine email.[5]',
    'A type of phishing attack where the attacker has used research to find a target with a lot of influence and/or resources which would make their attack profitable, these attacks often ask the victim for the transfer of money or use the threat of management to convince the target to follow the emails instructions[5]',
  ];
  List<String> signs = [
    '1) The Email Address',
    '2) Links',
    '3) Spelling Mistakes',
    '4) Includes Attachments',
    '5) Urgency'
  ];
  List<String> sections = [
    'Email phishing is one of the most popular types of Phishing attacks with over 96% of the phishing attacks in 2021 coming from email [1], essentially an attacker crafts what seems to be a generic email from a trustworthy source of the victim, these often tempt the user into clicking onto a malicious link where they are directed to a site to download a file onto their device or even put in personal/private information which the attacker can then use.[2], this is a common attack vector as the attacker can send them to all users in a business which could be 100s to 1000s with the assurance that at least one person will fall for it.',
    'One of the main indications of a possible phishing email is the email address, attackers often make & use random email addresses to hide from spam/phishing filters which would block emails from known phishing addresses, these can also look similar to a legitimate email but use different characters to make it seem at first glance that it is came from a legitimate/known email but is in fact the attackers[3]',
    'A further indication is that the email is asking you to click onto a link, this is a common tactic used to direct the user to a seemingly legitimate website where the user then puts in info thinking that it is the actual site, for example Facebook when it is actually the attacker, this can also be used to download a malicious file to the device.[3]',
    'Looking for spelling mistakes in an email is a further way of rooting out potential phishing emails, often these emails are not proof-read or checked to make sure that these errors are found, it is also a theory that these mistakes are left in to ensure only the most gullible or unaware of users fall for the email, thus making the success of the operation more likely[3]',
    'This is also seen frequently in Phishing scams where the attacker tries to get the victim to download a malicious file onto their device which can contain malware to infect the device/network or even be software to give the attacker remote access into the network.[3][4]',
    'Urgency is also seen in such phishing emails to make it seem important that the user moves quickly to follow the request of the attacker, this is to ensure that the email is looked at less for potential flaws which could give away the scam.[3][4]',
  ];
  List<String> sources = [
    '1)	https://www.tessian.com/blog/phishing-statistics-2020/',
    '2)	https://www.imperva.com/learn/application-security/phishing-attack-scam/',
    '3)	https://www.itgovernance.co.uk/blog/5-ways-to-detect-a-phishing-email',
    '4)	https://cofense.com/knowledge-center/signs-of-a-phishing-email/',
  ];
  List<Widget> images = [
    Container(child: Image(image: AssetImage('assets/section_images/phishing/example_email.png'))),
    Container(child: Image(image: AssetImage('assets/section_images/phishing/example_email_from.png'))),
    Container(child: Image(image: AssetImage('assets/section_images/phishing/example_email_link.png'))),
    Container(child: Image(image: AssetImage('assets/section_images/phishing/example_email_spell.png'))),
    Container(child: Image(image: AssetImage('assets/section_images/phishing/example_email_file.png'))),
    Container(child: Image(image: AssetImage('assets/section_images/phishing/example_email_now.jpg'))),
  ];
  hTemplate(String text){
    return Container(margin: const EdgeInsets.only(left: 40,bottom: 5, top: 5),
        child: Text(text,textAlign: TextAlign.left,style: const TextStyle(fontSize: 20),));
  }
  signTemplate(String text){
    return Container(margin: const EdgeInsets.only(left: 5,bottom: 5, top: 5),
        child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),));
  }
  sourceTemp(String text){
    return Text(text,
      style: TextStyle(
          fontSize: 10,
          fontStyle: FontStyle.italic,
          color: Colors.black54
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement 
    //_controller = VideoPlayerController.network('https://raw.githubusercontent.com/LA-1002/phish_net/main/phishing_example_video_1.mp4');
    _controller = VideoPlayerController.asset('assets/section_videos/phishing_example_video.mp4');
    _initaliseVideo = _controller.initialize();
    //_controller.setLooping(true);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              color: Color(0xFF1e90ff)
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text('Email Phishing',
                    style: TextStyle(fontSize: 30,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: size.width,
                  height: 706,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                      )
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
                    child: ListView(
                      children: [
                        //What is Section
                        hTemplate(heading[0]),
                        Text(sections[0]),
                        // Type Section
                        hTemplate(heading[1]),
                        //Type 1
                        Container(margin: EdgeInsets.only(top: 5),
                          child: Text(types[0],style: TextStyle(fontSize: 16,color: Color(0xFF1e90ff),fontWeight: FontWeight.bold)),),
                        Text(typesInfo[0]),
                        //Type 2
                        Container(margin: EdgeInsets.only(top: 5),
                          child: Text(types[1],style: TextStyle(fontSize: 16,color: Color(0xFF1e90ff),fontWeight: FontWeight.bold)),),
                        Text(typesInfo[1]),
                        //Type 3
                        Container(margin: EdgeInsets.only(top: 5),
                          child: Text(types[2],style: TextStyle(fontSize: 16,color: Color(0xFF1e90ff),fontWeight: FontWeight.bold)),),
                        Text(typesInfo[2]),
                        //Example Email Section
                        hTemplate(heading[2]),
                        images[0],
                        sourceTemp('https://www.phishing.org/phishing-examples'),
                        //Signs
                        hTemplate(heading[3]),
                        //Sign 1
                        signTemplate(signs[0]),
                        Text(sections[1]),
                        images[1],
                        sourceTemp('https://www.phishing.org/phishing-examples'),
                        //Sign 2
                        signTemplate(signs[1]),
                        Text(sections[2]),
                        images[2],
                        sourceTemp('https://www.phishing.org/phishing-examples'),
                        //Sign 3
                        signTemplate(signs[2]),
                        Text(sections[3]),
                        images[3],
                        sourceTemp('https://cheapsslsecurity.com/blog/wp-content/uploads/2021/03/examples-of-phishing-emails-maersk-scam.png'),
                        //Sign 4
                        signTemplate(signs[3]),
                        Text(sections[4]),
                        images[4],
                        sourceTemp('https://cheapsslsecurity.com/blog/wp-content/uploads/2021/03/examples-of-phishing-emails-maersk-scam.png'),
                        //Sign 5
                        signTemplate(signs[4]),
                        Text(sections[5]),
                        images[5],
                        sourceTemp('https://blog.usecure.io/hubfs/Example%20of%20a%20nigerian%20scam.jpg'),
                        // Example Video Of Attack
                        hTemplate(heading[4]),
                        Container(
                          height: 200,
                          child: Stack(
                            children: [
                              FutureBuilder(
                                future: _initaliseVideo,
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState == ConnectionState.done) {
                                    return AspectRatio(aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller),
                                    );
                                  } else {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                },
                              ),
                              //VIDEO
                              Container(
                                margin: EdgeInsets.only(left: 10,top: 130),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_controller.value.isPlaying){
                                        _controller.pause();
                                      } else {
                                        _controller.play();
                                      }
                                    });
                                  },
                                  child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,),
                                ),
                              )
                              //BUTTON
                            ],
                          ),
                        ),
                        hTemplate(heading[5]),
                        sourceTemp('1)	https://www.tessian.com/blog/phishing-statistics-2020/'),
                        sourceTemp('2)	https://www.imperva.com/learn/application-security/phishing-attack-scam/'),
                        sourceTemp('3)	https://www.itgovernance.co.uk/blog/5-ways-to-detect-a-phishing-email'),
                        sourceTemp('4)	https://cofense.com/knowledge-center/signs-of-a-phishing-email/'),



                        //END OF LIST
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
