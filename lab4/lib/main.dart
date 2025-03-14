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
      title: 'Lab4',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade800),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _heartCounter = 0;

  void _heartCounter() {
    setState(() {
      _heartCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.title),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Image.asset("assets/Untitled-1.png"),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              spacing: 20,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Text('Общежитие №20', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('Краснодар, ул. Калинина, 13', style: TextStyle(fontSize: 16, color: Colors.grey.shade500))
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: _heartCounter, icon: Icon(Icons.favorite, color: Colors.red,)),
                        Text("$_heartCounter", style: TextStyle(fontSize: 16),)
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          print("Идёт звонок");
                        },
                        child:
                        Column(
                          spacing: 4,
                          children: [
                            Icon(Icons.phone, color: Colors.green, size: 25,),
                            Text("ПОЗВОНИТЬ", style: TextStyle(color: Colors.green)),
                          ],
                        )
                    ),
                    TextButton(
                        onPressed: () {
                          print("Происходит построение маршрута");
                        },
                        child:
                        Column(
                          spacing: 4,
                          children: [
                            Icon(Icons.map, color: Colors.green, size: 25,),
                            Text("МАРШРУТ", style: TextStyle(color: Colors.green)),
                          ],
                        )
                    ),
                    TextButton(
                        onPressed: () {
                          print("Выбор пользователя и социальной сети для репоста");
                        },
                        child:
                        Column(
                          spacing: 4,
                          children: [
                            Icon(Icons.share, color: Colors.green, size: 25,),
                            Text("ПОДЕЛИТЬСЯ", style: TextStyle(color: Colors.green)),
                          ],
                        )
                    )
                  ],
                ),
                Text('Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитияхуниверситета, при поселении между администрацией и студентами заключаетсядоговор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствияасоциальных явлений в молодежной среде. Условия проживания в общежитияхуниверситетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов инаглядной агитации. С целью улучшения условий быта студентов активно работаетсистема студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
              ],
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
