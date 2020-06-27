abstract class Person {
  //抽象类通过`abstract`关键字定义
  getSex(); //没有方法体的方法称为抽象方
}

class Man extends Person {
  //子类必须实现父类里的抽象方法
  @override
  getSex() {
    return 'Man';
  }

  String getMsg() {
    return '抽象类Man中的普通方法';
  }
}

class Woman extends Person {
  //子类必须实现父类里的抽象方法
  @override
  getSex() {
    return 'Woman';
  }

  String getMsg() {
    return '抽象类Woman中的普通方法';
  }
}

main() {
  var man = new Man();
  print(man.getSex()); //Man
  print(man.getMsg()); //抽象类中的普通方法
  var woman = new Woman();
  print(woman.getSex()); //Woman
  print(woman.getMsg()); //抽象类中的普通方法

  Person man1 = new Man();
  print(man1.getSex()); //Man
  // print(man1.getMsg()); //子类的实例赋值给父类的引用,父类引用不能调用子类中的方法
}
