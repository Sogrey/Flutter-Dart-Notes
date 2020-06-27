class Rect {
  num height;
  num width;
  Rect(this.width, this.height);
  // num area(){
  //   return this.width*this.height;
  // }
  //简写
  get area {
    return this.width * this.height;
  }

  //Setters should declare exactly one required parameter.
  //Setters应该只声明一个必需的参数。
  set areaWidth(num width) {
    this.width = width;
  }

  set areaHeight(num height) {
    this.height = height;
  }
}

main() {
  var r = new Rect(20, 2);
  // print(r.area());
  print(r.area);//40

  r.areaWidth = 20;
  r.areaHeight = 10;
  print(r.area);//200
}
