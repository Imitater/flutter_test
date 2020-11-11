class TodayBean{
  String url;
  String name;
  TodayBean(url,name){
    this.url=url;
    this.name=name;
  }
  set sUrl(String url){
      this.url=url;
  }
  String get gUrl=>this.url;

    set sName(String name){
      this.name=name;
  }
  String get gName=>this.name;
}