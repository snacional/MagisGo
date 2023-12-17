import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class LandingPageContent extends StatefulWidget {
  final PageController pageController;
  final AnimationController animationController;

  const LandingPageContent({
    super.key,
    required this.pageController,
    required this.animationController,
  });

  @override
  _LandingPageContentState createState() => _LandingPageContentState();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MagisGO',
      debugShowCheckedModeBanner: false,
      home: MyLandingPage(),
    );
  }
}

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({super.key});

  @override
  _MyLandingPageState createState() => _MyLandingPageState();
}

class _LandingPageContentState extends State<LandingPageContent> {
  late Animation<Offset> _slideAnimation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          widget.animationController.forward();
          widget.animationController.addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              widget.pageController.nextPage(
                duration: const Duration(milliseconds: 1),
                curve: Curves.easeInOut,
              );
            }
          });
        }
      },
      child: Container(
        color: const Color(0xFFF24F04),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SlideTransition(
                  position: _slideAnimation,
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
              ),
              Container(
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'MAGIS',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfffcf6f5),
                      ),
                    ),
                    Text(
                      'GO',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 65,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfffcf6f5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(1.0, 0.0),
    ).animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Curves.ease,
    ));
  }
}

class _MyLandingPageState extends State<MyLandingPage>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 0);
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling
        children: <Widget>[
          LandingPageContent(
            pageController: _pageController,
            animationController: _animationController,
          ),
          const StartPage(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(1.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
    ));
  }
}
