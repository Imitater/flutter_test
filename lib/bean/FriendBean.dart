class FriendBean {
  String url;
  String name;
  String desc;

  FriendBean(url,name,desc){
    this.url=url;
    this.name=name;
    this.desc=desc;
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

    set sDesc(String desc) {
    desc = desc;
  }

  String get gDesc {
    return desc;
  }
}
