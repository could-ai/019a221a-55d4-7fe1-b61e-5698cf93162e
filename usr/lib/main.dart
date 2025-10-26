import 'package:flutter/material.dart';

void main() {
  runApp(const KHLApp());
}

class KHLApp extends StatelessWidget {
  const KHLApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KHL Teams',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const KHLHomePage(),
    );
  }
}

class KHLHomePage extends StatelessWidget {
  const KHLHomePage({super.key});

  final List<String> khlTeams = const [
    'Ak Bars Kazan',
    'Avangard Omsk',
    'CSKA Moscow',
    'Dynamo Moscow',
    'Lokomotiv Yaroslavl',
    'Metallurg Magnitogorsk',
    'Salavat Yulaev Ufa',
    'SKA Saint Petersburg',
    'Sibir Novosibirsk',
    'Traktor Chelyabinsk',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KHL Teams'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListView.builder(
        itemCount: khlTeams.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.sports_hockey),
              title: Text(
                khlTeams[index],
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text('Team ${index + 1}'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected: ${khlTeams[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}