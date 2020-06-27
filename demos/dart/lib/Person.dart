class Person {
  String name;
  int age;
  String sex;

  // Person([String name,int age]){
  //   print('构造方法，实例化时自动触发');
  //   this.name = name;
  //   this.age = age;
  // }

  Person([this.name, this.age]);

  Person.work() {
    print('命名构造函数');
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return this.name;
  }

  void setAge(int age) {
    this.age = age;
  }

  int getAge() {
    return this.age;
  }

  String getInfo() {
    return 'My name is ${this.name},${this.sex},${this.age} years old.';
  }
}
