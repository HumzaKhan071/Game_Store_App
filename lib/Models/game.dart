class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num donwload;
  num review;
  String desc;
  List<String> imgs;
  Game(this.bgImg, this.icon, this.name, this.type, this.score, this.donwload,
      this.review, this.desc, this.imgs);

  static List<Game> generateGames() {
    return [
      Game(
          "assets/images/ori1.jpg",
          "assets/images/ori_logo.png",
          "Ori and the Blind Forest",
          "Adventure",
          4.8,
          382,
          324,
          "Ori and the Blind Forest” tells the tale of a young orphan destined for heroics",
          [
            "assets/images/ori2.jpg",
            "assets/images/ori3.jpg",
            "assets/images/ori4.jpg",
            "assets/images/ori5.jpg",
          ]),
      Game(
          "assets/images/rl1.jpg",
          "assets/images/rl_logo.png",
          "Rayman Legends",
          "Adventure",
          4.8,
          382,
          324,
          "ayman, Globox, and the Teensies are off wandering through an enchanted forest when they discover a mysterious tent filled",
          [
            "assets/images/rl2.jpg",
            "assets/images/rl3.jpg",
            "assets/images/rl4.jpg",
            "assets/images/rl2.jpg",
          ]),
    ];
  }
}
