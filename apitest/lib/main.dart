import 'package:apitest/datasource/remote_datasource.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final RemoteDatasource apiService;

  @override
  void initState() {
    super.initState();

    apiService = RemoteDatasource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: apiService.getUser("winitest_mtest2"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('오류 ${snapshot.error}'),
            ],
          );
        }
        final data = snapshot.data;
        //     UserData.fromJson(snapshot.data?.body?.resultData?.first).isOverlap;

        // return Text('$data');
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data!.toString()),
          ],
        );
        //return ListView.separated(
        //   scrollDirection: Axis.vertical,
        //   itemCount: data!.length,
        //   itemBuilder: (context, index) {
        //     var user = data[index];
        //     return Text(user.name ?? '');
        //   },
        //   separatorBuilder: (context, index) => const SizedBox(
        //     width: 40,
        //   ),
        // );
      },
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

//https://medium.com/@ssindher11/exploring-sealed-classes-in-flutter-241d3e160132https://medium.com/@ssindher11/exploring-sealed-classes-in-flutter-241d3e160132
