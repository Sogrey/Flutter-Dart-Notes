import 'Person.dart';

class Child extends Person{

  Child(String name,int age,String sex):super(name,age){
    this.sex = sex;
  }
  void setName(String name) {
    this.name ='Child\'s ${name}';
  }
}