// Dart 入口函数

// void  main(){
//   print('Hello.');
// }

// ↓

// main(){
//   print('Hello.');
// }

// ↓

// main() => {print('Hello.')};

// Dart注释

// /**
//  * 这是主入口函数注释
//  */
// main(){
//     /*
//      * 这是函数体
//      */
// }

//Dart变量

import 'dart:ffi';

main() {
  var str = 'This is var.';
  String str1 = 'This is string.';
  int num = 123;
  print(str);
  print(str1);
  print(num);

  // var s = '';
  // s=123; //报错
  // A value of type 'int' can't be assigned to a variable of type 'String'.
  // Try changing the type of the variable, or casting the right-hand type to 'String'.
}

//Dart常量

const double PI = 3.1415926;

// PI = 123; //报错
// Variables must be declared using the keywords 'const', 'final', 'var' or a type name.
// Try adding the name of the type of the variable or the keyword 'var'.dart(missing_const_final_var_or_type)
// The name 'PI' is already defined.
// Try renaming one of the declarations.
