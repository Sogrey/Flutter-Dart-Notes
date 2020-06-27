//函数定义
void printMsg(String msg) {
  print('自定义方法 $msg');
}

//可选参数
void printUsrInfo(String name, [String sex = '男', int age]) {
  if (age != null)
    print('姓名： $name，年龄：$age，性别：$sex');
  else
    print('姓名： $name，年龄：未知，性别：$sex');
}

void printUsrInfo2(String name, {String sex = '男', int age}) {
  if (age != null)
    print('姓名： $name，年龄：$age，性别：$sex');
  else
    print('姓名： $name，年龄：未知，性别：$sex');
}

var fn = () {
  print('我是一个匿名方法');
};
//方法
fn1() {
  print('fn1');
}

//方法
fn2(fn) {
  fn();
}

main() {
  printMsg('Hello Dart.');
  printUsrInfo('张三', '男', 23);
  printUsrInfo('李四', '女');
  printUsrInfo2('张三', age: 20, sex: '未知');

  //调用fn2这个方法 把fn1这个方法当做参数传入
  fn2(fn1);

  List list = ['Apple', 'HuaWei', 'Samsung'];
  //遍历
  list.forEach((value) {
    print(value);
  });

  //箭头函数
  list.forEach((value) => {print(value)});
  list.forEach((value) => print(value));

  List list2 = [1, 2, 3, 4, 5, 6, 7];
  var newList = list2.map((value) {
    if (value % 2 == 1) {
      return value * 2;
    }
    return value;
  });
  print(newList.toList());

  var newList2 = list2.map((value) => value % 2 == 1 ? value * 2 : value);
  print(newList2.toList());

  //匿名函数

  var printNum = (int num) {
    print(num);
  };
  printNum(123 + 32);

  //闭包

  fun() {
    var a = 1;
    return () {
      a++;
      print(a);
    };
  }

  var b = fun();
  b();b();b();
}
