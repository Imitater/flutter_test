class HotBean {
  String url;
  String name;
  String desc;
  String head;
  String count;
  HotBean(url, name, desc,head,count) {
    this.url = url;
    this.name = name;
    this.desc = desc;
    this.head=head;
    this.count=count;
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

  set sHead(String head) {
    head = head;
  }

  String get gHead {
    return head;
  }
   set sCount(String count) {
    count = count;
  }

  String get gCount {
    return count;
  }
}
