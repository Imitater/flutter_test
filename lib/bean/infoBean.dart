class InfoBean {
  String title;
  String count;
  InfoBean(title, count) {
    this.title = title;
    this.count = count;
  }
  set sTitle(String title) {
    this.title = title;
  }

  String get gTitle => this.title;

  set sCount(String count) {
    this.count = count;
  }

  String get gCount => this.count;
}
