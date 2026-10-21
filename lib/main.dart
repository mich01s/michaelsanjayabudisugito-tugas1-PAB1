import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.blue),
        useMaterial3: true
      ),
      home: const MyHomePage(title: 'Galeri Foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.network(
              "https://picsum.photos/id/88/300/200",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                      "Jalan di Barcelona",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                Divider(),
                Row(
                  children: [
                    Icon(
                      Icons.location_on, 
                      color: Colors.red
                    ),
                    SizedBox(width: 8.0),
                    Text("Lokasi: Barcelona, Spanyol")
                  ]
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month, 
                      color: Colors.blue
                    ),
                    SizedBox(width: 8.0),
                    Text("Publikasi: 13 Agustus 2013")
                  ]
                ),
                Divider(),
                Text("Deskripsi",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    
                  )
                ),
                Text("Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik",
                  textAlign: TextAlign.justify
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
