class Home extends StatelessWidget {
  const Home({Key? key, required this.questions}) : super(key: key);

  final List<Cards> questions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(questions[index].category),
            subtitle: Text(questions[index].question),
          );
        },
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  final List<CartaDePreguntas> questions;

  const MyApp({Key? key, required this.questions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      home: HomeWidget(cards: questions),
    );
  }
}

class HomeWidget extends StatefulWidget {
  final List<CartaDePreguntas> cards;

  const HomeWidget({Key? key, required this.cards}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  void addCardToList(CartaDePreguntas card) {
    setState(() {
      widget.cards.add(card);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 1000;

    final cardWidth = isSmallScreen ? null : screenSize.width / 3;

    final cardList = widget.cards.map((card) {
      return GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(card.respuesta),
            ),
          );
        },
        child: Container(
          width: cardWidth,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          color: Colors.tealAccent,
          child: Column(
            children: [
              Text(
                card.categoria,
                textAlign: TextAlign.center,
              ),
              Text(
                card.pregunta,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }).toList();

    final cardListWidget = isSmallScreen
        ? Column(
            children: cardList,
          )
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cardList,
            ),
          );

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Trivia App 1.1"),


// HERE
      
      
      Center(
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Skateboarding"),
                  ),
                );
              },
              child: Container(
                width: 300,
                color: Colors.tealAccent,
                child: Column(
                  children: [
                    Text(
                      carta1.category,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      carta1.question,
                      textAlign: TextAlign.center,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            "images/001.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          top: 80,
                          child: Text("Stack Label 1"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Diablo"),
                  ),
                );
              },
              child: Container(
                width: 300,
                color: Colors.tealAccent,
                child: Column(
                  children: [
                    Text(
                      card.category,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      carta2.question,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        "images/002.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Flutter"),
                  ),
                );
              },
              child: Container(
                width: 300,
                color: Colors.tealAccent,
                child: Column(
                  children: [
                    Text(
                      carta3.category,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      carta3.question,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://storage.googleapis.com/cms-storage-bucket/acb0587990b4e7890b95.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}