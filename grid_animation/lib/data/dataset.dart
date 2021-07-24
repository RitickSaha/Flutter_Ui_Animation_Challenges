class MovieData {
  final String name;
  final int time;
  final double score;
  final String category;
  final String discription;
  final String assets;

  MovieData({
    required this.name,
    required this.time,
    required this.score,
    required this.category,
    required this.discription,
    required this.assets,
  });
}

class MovieDataList {
  late List<MovieData> moviewDataList = [];
  MovieDataList() {
    generateData();
  }
  List<MovieData> generateData() {
    moviewDataList.add(
      MovieData(
        name: '127 Hours',
        time: 94,
        score: 7.5,
        category: 'Biography, Drama',
        discription:
            'A mountain climber becomes trapped under a boulder while canyoneering alone near Moab, Utah and resorts to desperate measures in order to survive.',
        assets: 'assets/a1.jpeg',
      ),
    );
    moviewDataList.add(
      MovieData(
        name: 'Space Jam: A New Legacy',
        time: 64,
        score: 9.3,
        category: 'Carton, Drama',
        discription:
            'A rogue artificial intelligence kidnaps the son of famed basketball player LeBron James, who then has to work with Bugs Bunny to win a basketball game.',
        assets: 'assets/a2.jpg',
      ),
    );
    moviewDataList.add(
      MovieData(
        name: 'Space Jam: A New Legacy',
        time: 64,
        score: 9.3,
        category: 'Carton, Drama',
        discription:
            'A rogue artificial intelligence kidnaps the son of famed basketball player LeBron James, who then has to work with Bugs Bunny to win a basketball game.',
        assets: 'assets/a3.jpg',
      ),
    );

    return moviewDataList;
  }
}
