class Cards {
  String title;
  String hint1;
  String hint2;
  String question;
  String solution;

  Cards({
    required this.title,
    required this.hint1,
    required this.hint2,
    required this.question,
    required this.solution,
  });
}

final List<Cards> questionlist = [
  Cards(
      title: "Sports",
      question: "What is one of the newest Olympic sports that exist?",
      solution: "Skateboarding",
      hint1: "4 Wheels",
      hint2: "Created in California, USA"),
  Cards(
      title: "Comics",
      question: "What's the name of a latinamerican DC villain?",
      solution: "Diablo",
      hint1: "Power > > Fire",
      hint2: "Real name > > Chato Santana"),
  Cards(
      title: "Tech",
      question: "What is the best programming langauge to create apps?",
      solution: "Flutter",
      hint1: "Power > > Multiplatform",
      hint2: "Developed by Google"),
  Cards(
      title: "Sports",
      question:
          "What do you call it when a bowler makes three strikes in a row?",
      solution: "Turkey",
      hint1: "It is called like an animal",
      hint2: "The animal has feathers"),
  Cards(
      title: "Comics",
      question: "Who is the fastest DC character?",
      solution: "The Flash",
      hint1: "Real name > > Barry Allen ",
      hint2: "Red suit"),
  Cards(
      title: "Tech",
      question: "One gigabyte is equal to how many megabytes?",
      solution: "1000",
      hint1: "3 zeros",
      hint2: "No more than 10000"),
  Cards(
      title: "Sports",
      question: "Which boxer fought against Muhammad Ali and won?",
      solution: "Joe Frazier",
      hint1: "Starts with a J",
      hint2: "Ends with Frazier"),
  Cards(
      title: "Comics",
      question: "Who is the tyrannical ruler of the planet Apokolips?",
      solution: "Darkseid",
      hint1: "Powerful Villain",
      hint2: "Converted almost the whole Justice League to robots"),
  Cards(
      title: "Tech",
      question: "What does CPU stand for?",
      solution: "Central Processing Unit",
      hint1: "Is where you process information all in one place",
      hint2: "Is al centralized"),
  Cards(
      title: "Sports",
      question:
          "In motor racing, what color is the flag they wave to indicate the winner?",
      solution: "Checkered flag",
      hint1: "Black and white",
      hint2: "There is an emoji of it"),
  Cards(
      title: "Comics",
      question: "How did Deathstroke get his powers?",
      solution: "A military experiment",
      hint1: "Authorities have something to do with it",
      hint2: "Science related accident"),
  Cards(
      title: "Tech",
      question: "What does “HTTP” stand for?",
      solution: "Hypertext Transfer Protocol",
      hint1: "Involves Hypertext",
      hint2: "Involves transfer of data"),
  Cards(
      title: "Sports",
      question: "How many holes are played in an average round of golf?",
      solution: "18",
      hint1: "No more than 20",
      hint2: "More than 15"),
  Cards(
      title: "Comics",
      question: "Dick Grayson was first known as Robin and later as...?",
      solution: "Nightwing",
      hint1: "Black suit",
      hint2: "Blue logo"),
  Cards(
      title: "Tech",
      question: "What is a Fat Arrow Notation in Dart?",
      solution: "=>",
      hint1: "Two symbols",
      hint2: "Equal and more than"),
];
