import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  _launchURL(String url) async {
    // const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xff868686),
                const Color(0xff000000),
              ],
              tileMode: TileMode.repeated),
        ),
        child: width > 800
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: (height < width ? height : width) * 0.4,
                          width: (height < width ? height : width) * 0.4,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profile.jpeg'),
                              // fit: height > 450 ? BoxFit.cover : BoxFit.none,
                              fit: BoxFit.cover,
                              alignment: height > 450
                                  ? Alignment(0.1, -0.5)
                                  : Alignment.center,
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: height * 0.02,
                            horizontal: width * 0.04,
                          ),
                        ),
                        Text(
                          'Hi there,\nI\'m Suvranil',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Baskerville',
                            fontSize: 70,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(height * 0.035),
                    // height: height,
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: height * 0.15,
                          ),
                          Text(
                            'About',
                            style: TextStyle(
                                fontFamily: 'CaviarDreams',
                                fontSize: 40,
                                decoration: TextDecoration.underline,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Container(
                            width: width * 0.45,
                            child: Text(
                              'I am a Flutter developer and ML enthusiast.\nI love reading, playing chess, watching football and listening to music.',
                              style: TextStyle(
                                fontFamily: 'CaviarDreams',
                                fontSize: 40,
                                color: Colors.white,
                              ),
                              softWrap: true,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                ),
                                onPressed: () =>
                                    _launchURL('https://github.com/neil-dev'),
                              ),
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.white,
                                ),
                                onPressed: () => _launchURL(
                                    'https://twitter.com/Suvr0Dutta'),
                              ),
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.white,
                                ),
                                onPressed: () => _launchURL(
                                    'https://www.linkedin.com/in/suvranil-dutta-biswas'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: (height < width ? height : width) * 0.40,
                      width: (height < width ? height : width) * 0.40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile.jpeg'),
                          // fit: height > 450 ? BoxFit.cover : BoxFit.none,
                          fit: BoxFit.cover,
                          alignment: height > 450
                              ? Alignment(0.1, -0.5)
                              : Alignment.center,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: height * 0.02,
                        horizontal: width * 0.04,
                      ),
                    ),
                    Text(
                      'Hi there,\nI\'m Suvranil',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Baskerville',
                        fontSize: 50,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                          fontFamily: 'CaviarDreams',
                          fontSize: 30,
                          decoration: TextDecoration.underline,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      width: width * 0.45,
                      child: Text(
                        'I am a Flutter developer and ML enthusiast.\nI love reading, playing chess, watching football and listening to music.',
                        style: TextStyle(
                          fontFamily: 'CaviarDreams',
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                          onPressed: () =>
                              _launchURL('https://github.com/neil-dev'),
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                          onPressed: () =>
                              _launchURL('https://twitter.com/Suvr0Dutta'),
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ),
                          onPressed: () => _launchURL(
                              'https://www.linkedin.com/in/suvranil-dutta-biswas'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
