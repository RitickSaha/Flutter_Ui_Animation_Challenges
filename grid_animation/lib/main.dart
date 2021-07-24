import 'package:flutter/material.dart';

import 'data/dataset.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController animationController;
  Widget animatedSwitcher = SizedBox();
  late List<MovieData> movieList;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    movieList = MovieDataList().moviewDataList;
    animatedSwitcher = SizedBox();
    super.initState();
  }

  bool listed = false;
  @optionalTypeArgs
  void didChangeDependencies() {
    switchWidget();
    super.didChangeDependencies();
  }

  switchWidget() {
    setState(() {
      if (!listed) {
        animatedSwitcher = Container(
          key: ValueKey<bool>(listed),
          child: Image.asset(
            movieList[1].assets,
            height: 200,
            width: 140,
            fit: BoxFit.fitHeight,
          ),
        );
      } else {
        animatedSwitcher = Container(
          key: ValueKey<bool>(listed),
          // margin: EdgeInsets.all(8),
          child: Image.asset(
            movieList.last.assets,
            height: 200,
            width: 140,
            fit: BoxFit.fitHeight,
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    listed = !listed;

                    listed
                        ? animationController.forward()
                        : animationController.reverse();
                    switchWidget();
                  });
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.list_view,
                  progress: animationController,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Stack(
                  children: List.generate(
                    30,
                    (index) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          top: !listed ? 600.0 * index : 200.0 * index),
                      height: 200 * 3,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        fit: StackFit.loose,
                        children: List.generate(
                          3,
                          (index) => AnimatedSwitcher(
                              duration: Duration(
                                  milliseconds: 200 + (100 * (2 - index))),
                              transitionBuilder:
                                  (Widget child, Animation<double> animation) {
                                if (child.key == ValueKey(false)) {
                                  return PositionedTransition(
                                    rect: RelativeRectTween(
                                      begin: RelativeRect.fromLTRB(
                                        0,
                                        200.0 * (2 - index) -
                                            200.0 * (2 - index),
                                        350 - ((300.0 * (2 - index))),
                                        200.0 * (2 - index),
                                      ),
                                      end: RelativeRect.fromLTRB(
                                        0,
                                        200.0 * (2 - index),
                                        350,
                                        0,
                                      ),
                                    ).animate(animation),
                                    child: FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    ),
                                  );
                                }
                                // -200.0 * (2 - index)
                                return PositionedTransition(
                                  rect: RelativeRectTween(
                                    end: RelativeRect.fromLTRB(
                                      0,
                                      200.0 * (2 - index) - 200.0 * (2 - index),
                                      350 - ((300.0 * (2 - index))),
                                      200.0 * (2 - index),
                                    ),
                                    begin: RelativeRect.fromLTRB(
                                      0,
                                      200.0 * (2 - index),
                                      350,
                                      0,
                                    ),
                                  ).animate(animation),
                                  child: FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  ),
                                );
                              },
                              child: animatedSwitcher,
                              layoutBuilder: (Widget? currentChild,
                                  List<Widget> previousChildren) {
                                return Container(
                                  height: 200.0 * (2 - index + 1),
                                  alignment: Alignment.topLeft,
                                  width: double.infinity,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      // ...previousChildren,
                                      if (currentChild != null) currentChild,
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
