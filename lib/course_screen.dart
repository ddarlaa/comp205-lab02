import 'package:flutter/material.dart';

/// Lab 2 - build the "course card" screen from the sketch (LAB02.pdf, Figure 1).
///
/// Red zone: write this by hand, AI assistants off.
/// Run the tests often:  flutter test
class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  // TODO(Part 4): add the state you need (a counter and a favorite flag).

  @override
  Widget build(BuildContext context) {
    // TODO(Part 1-5): replace this placeholder with the screen from the sketch.

    //  - Part 4: 'Interested: N' + "I'm interested" button + favorite IconButton

    return Scaffold(
      appBar: AppBar(title: const Text('COMP 205')),
      body: SingleChildScrollView(
        //  - Part 5: no overflow on a small phone
        //  - Part 1: AppBar 'COMP 205'
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // header row (CircleAvatar + course name/term)
            Row(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.school), // child 1
                ),

                const SizedBox(width: 16), //child 2

                Expanded(
                  //child 3
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Programming',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Text('Fall 2026 · B238'),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Part 2: schedule row with three equal items (Expanded)
            Row(
              children: [
                _ScheduleItem(icon: Icons.schedule, text: 'Mon 10:00'),
                _ScheduleItem(icon: Icons.computer, text: 'Wed 10:00'),
                _ScheduleItem(icon: Icons.groups, text: 'Fri 15:00'),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            //  - Part 3: description inside a Card
            const Card(
              child: Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: Text(
                      'Build AI-powered mobile apps with Flutter: from widgets to machine learning and LLMs')),
            ),






          ],
        ),
      ),
    );
  }
}

class _ScheduleItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ScheduleItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}
