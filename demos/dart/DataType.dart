main() {
  var str = 'var定义字符串';
  String str1 = 'String定义字符串'; //值必须是String类型

  print('$str $str1');

  var l2 = new List();

  l2.add('张三');
  l2.add('李四');
  l2.add(345);

  print(l2);

  var person = {
    'name': 'Sogrey', //key 必须加引号
    'age': 30
  };
  print(person);
  print(person['name']);

  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input =
      new Runes('\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d}');
  print(new String.fromCharCodes(input));
}
