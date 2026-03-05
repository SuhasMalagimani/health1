import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Health"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Today's Vitals Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                const Text(
                  "Today's Vitals",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoryPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "View History",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),

            const SizedBox(height: 12),

            /// Vital Cards
            Row(
              children: const [

                Expanded(
                  child: VitalCard(
                    title: "Heart Rate",
                    value: "72 BPM",
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: VitalCard(
                    title: "Steps",
                    value: "8,432",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            /// Health Locker
            const Text(
              "Health Locker",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                LockerItem(
                  icon: Icons.science,
                  title: "Lab Reports",
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LabReportsPage(),
                      ),
                    );
                  },
                ),

                LockerItem(
                  icon: Icons.description,
                  title: "Prescriptions",
                  color: Colors.purple,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrescriptionsPage(),
                      ),
                    );
                  },
                ),

                LockerItem(
                  icon: Icons.vaccines,
                  title: "Vaccines",
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VaccinesPage(),
                      ),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 30),

            /// Sharing Activity
            const Text(
              "Sharing Activity",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(51),
                    blurRadius: 6,
                  )
                ],
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      Text(
                        "City Care Hospital",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Requested: Past 6 months history",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Approve Consent"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////
/// Vital Card
////////////////////////////////////////////////////////

class VitalCard extends StatelessWidget {

  final String title;
  final String value;

  const VitalCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(title),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////
/// Locker Item
////////////////////////////////////////////////////////

class LockerItem extends StatelessWidget {

  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const LockerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,

      child: Column(
        children: [

          Container(
            padding: const EdgeInsets.all(18),

            decoration: BoxDecoration(
              color: color.withAlpha(51),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Icon(
              icon,
              color: color,
              size: 28,
            ),
          ),

          const SizedBox(height: 8),

          Text(title),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////
/// Extra Pages
////////////////////////////////////////////////////////

class LabReportsPage extends StatelessWidget {
  const LabReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lab Reports")),
      body: const Center(child: Text("Lab Reports Page")),
    );
  }
}

class PrescriptionsPage extends StatelessWidget {
  const PrescriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Prescriptions")),
      body: const Center(child: Text("Prescriptions Page")),
    );
  }
}

class VaccinesPage extends StatelessWidget {
  const VaccinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vaccines")),
      body: const Center(child: Text("Vaccines Page")),
    );
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vitals History")),
      body: const Center(child: Text("Vitals History Page")),
    );
  }
}