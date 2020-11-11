class ImageBean {
  String url;
  String name;
  String author;
  String authorUrl;
  String type;
  String worksAspectRatio;
  ImageBean(url, name, author, authorUrl, type, worksAspectRatio) {
    this.url = url;
    this.name = name;
    this.author = author;
    this.authorUrl = authorUrl;
    this.type = type;
    this.worksAspectRatio = worksAspectRatio;
  }

  set sAuthor(String author) {
    author = author;
  }

  String get gAuthor {
    return author;
  }

   set sAuthorUrl(String authorUrl) {
    authorUrl = authorUrl;
  }

  String get gAuthorUrl {
    return authorUrl;
  }

   set sType(String type) {
    type = type;
  }

  String get gType {
    return type;
  }

   set sWorksAspectRatio(String worksAspectRatio) {
    worksAspectRatio = worksAspectRatio;
  }

  String get gWrksAspectRatio {
    return worksAspectRatio;
  }

  set sUrl(String url) {
    url = url;
  }

  String get gUrl {
    return url;
  }

  set sName(String name) {
    name = name;
  }

  String get gName {
    return name;
  }
}
