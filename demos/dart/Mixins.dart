

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  printInfo() {
    print('${this.name} is ${this.age} years old.');
  }

  void run() {
    print('This is Person.');
  }
}

// 继承父类
class A {
  void printA() {
    print('A');
  }

  void run() {
    print('This is A.');
  }
}

class B {
  void printB() {
    print('B');
  }

  void run() {
    print('This is B.');
  }
}
//Mixins 类
class C extends Person with A, B {
  C(String name, num age) : super(name, age);
}

main() {
  var c = new C('Sogrey', 31);

  c.printInfo(); //Sogrey is 31 years old.

  // 继承自不同类，调用他们各自的方法
  c.printA(); //A
  c.printB(); //B

  // 继承多个类以及其他接口类中有相同方法，后面的会覆盖前面的
  c.run(); //This is B.

  // Mixins类的类型判断
  print(c is A); //true
  print(c is B); //true
  print(c is C); //true
  print(c is Person); //true
  print(c is Object); //true
}
