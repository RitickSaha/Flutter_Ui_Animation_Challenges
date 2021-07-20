//  127 Hours (2010)
// R | 94 min | Biography, Drama

//  7.5  Rate 82 Metascore
// A mountain climber becomes trapped under a boulder while canyoneering alone near Moab, Utah and resorts to desperate measures in order to survive.
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
  late List<MovieData> moviewDataList;

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
        assets: 'assets/a2.jpeg',
      ),
    );
    moviewDataList.add(
      MovieData(
        name: 'Escape Room: Tournament of Champions',
        time: 88,
        score: 4.3,
        category: 'Action, Adventure, Horror',
        discription:
            'Six people unwittingly find themselves locked in another series of escape rooms, slowly uncovering what they have in common to survive',
        assets: 'assets/a3.jpeg',
      ),
    );
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
        assets: 'assets/a2.jpeg',
      ),
    );
    moviewDataList.add(
      MovieData(
        name: 'Escape Room: Tournament of Champions',
        time: 88,
        score: 4.3,
        category: 'Action, Adventure, Horror',
        discription:
            'Six people unwittingly find themselves locked in another series of escape rooms, slowly uncovering what they have in common to survive',
        assets: 'assets/a3.jpeg',
      ),
    );
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
        assets: 'assets/a2.jpeg',
      ),
    );
    moviewDataList.add(
      MovieData(
        name: 'Escape Room: Tournament of Champions',
        time: 88,
        score: 4.3,
        category: 'Action, Adventure, Horror',
        discription:
            'Six people unwittingly find themselves locked in another series of escape rooms, slowly uncovering what they have in common to survive',
        assets: 'assets/a3.jpeg',
      ),
    );
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
        assets: 'assets/a2.jpeg',
      ),
    );
    moviewDataList.add(
      MovieData(
        name: 'Escape Room: Tournament of Champions',
        time: 88,
        score: 4.3,
        category: 'Action, Adventure, Horror',
        discription:
            'Six people unwittingly find themselves locked in another series of escape rooms, slowly uncovering what they have in common to survive',
        assets: 'assets/a3.jpeg',
      ),
    );
    moviewDataList.add(
      MovieData(
        name: 'Black Widow',
        time: 74,
        score: 6.9,
        category: 'Action, Adventure, Sci-Fi',
        discription:
            'Natasha Romanoff confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises.',
        assets: 'assets/a4.jpeg',
      ),
    );
    return moviewDataList;
  }
}
