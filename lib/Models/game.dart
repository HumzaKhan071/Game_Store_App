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
          "The little spirit Ori is no stranger to peril, but when a fateful flight puts the owlet Ku in harm’s way, it will take more than bravery to bring a family back together, heal a broken land, and discover Ori’s true destiny. From the creators of the acclaimed action-platformer Ori and the Blind Forest comes the highly anticipated sequel. Embark on an all-new adventure in a vast world filled with new friends and foes that come to life in stunning, hand-painted artwork.",
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
          "Rayman, Globox, and the Teensies are off wandering through an enchanted forest when they discover a mysterious tent filled with a series of captivating paintings. As they look more closely, they notice each painting seems to tell the story of a mythical world. While focusing on a painting that shows a medieval land, they are suddenly sucked into the painting, entering the world, and the adventure begins. ",
          [
            "assets/images/rl2.jpg",
            "assets/images/rl3.jpg",
            "assets/images/rl4.jpg",
            "assets/images/rl2.jpg",
          ]),
    ];
  }
}
