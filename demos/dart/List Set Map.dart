main() {
  // List 定义
  List list1 = ['Apple', 'HuaWei', 'Sansung'];
  var item1 = list1[1];
  print(item1); //HuaWei

  var list2 = new List();
  list2.add('手机');
  list2.add('电脑');
  list2.add('电视');
  list2.addAll(['洗衣机', '电冰箱']);

  print(list2); //[手机, 电脑, 电视, 洗衣机, 电冰箱]

  var list3 = list2.map((l)=> '${l} 是否是家用电器？').toList(); // map 没有修改list2

  print(list3);

  // Set

  var set = new Set();
  set.add('Apple');
  set.addAll(['HuaWei', 'Sansung']);
  print(set); //{Apple, HuaWei, Sansung}

  // Map

  var person = {'name': '张三', 'age': '22'};
  print(person); //{name: 张三, age: 22}

  var p = new Map();
  p['name'] = '李四';
  p['age'] = '23';
  print(p); //{name: 李四, age: 23}

}
