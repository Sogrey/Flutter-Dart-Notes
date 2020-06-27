import 'lib/Person.dart';
import 'lib/StaticClass.dart';
import 'lib/Child.dart';

main() {
  var p = new Person();
  p.setName('Sogrey');
  print(p.getName());
  p.age = 30;
  print(p.getAge());

  //静态成员

  var a = new Animal();
  a.setName('Cat');
  print(Animal.getName()); //Cat

  String aa = null;

  // print(aa.indexOf('a'));
  // Unhandled exception:
  // NoSuchMethodError: The method 'indexOf' was called on null.
  // Receiver: null
  // Tried calling: indexOf("a")

  print(aa?.indexOf('a')); //null

  if (a is Animal) {
    print('a is Animal');
  }

  (a as Animal).setName('Fish');

  Person pp = new Person();
  pp
    ..name = 'Sogrey'
    ..age = 31
    ..sex = '男';

  print(pp.getInfo());



Child c = new Child('张三', 12,'男');
c.setName('李四');
print(c.getInfo());

}
