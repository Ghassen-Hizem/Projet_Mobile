import 'package:flutter/material.dart';
import 'multi_board.dart';

class ProjectPage extends StatefulWidget {
  static const String routeName = "/home/Projectpage";

  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  int _currentIndex = 0;

  final List<Widget> _examples = [
    const MultiBoardListExample(),
  ];

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(),
      ),
      appBar: AppBar(
        title: const Text('Collaboration App'),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      body: Container(color: Colors.white, child: _examples[_currentIndex]),
    );
  }
}