main() {
  // for

  // for (var i = 0; i < 100; i++) {
  //   print(i);
  // }

  // while

  // var i = 0;
  // while (i < 10) {
  //   print(i);
  //   i++;
  // }

  // do-while
  // var i = 0;
  // do {
  //   print(i);
  //   i++;
  // } while (i < 10);

  // break
  // for (var i = 0; i < 10; i++) {
  //   if (i == 5) break;
  //   print(i);
  // }
  //0 1 2 3 4

  // for (var i = 0; i < 5; i++) {
  //   print('外层 $i');
  //   for (var j = 0; j < 5; j++) {
  //     if (i == 2 && j == 2) break;//跳过 i == 2 && j == 2 这次循环
  //     print('内层 $j');
  //   }
  // }

  // continue
  for (var i = 0; i < 10; i++) {
    if (i == 5) continue; // 跳过 i == 5 这次循环，继续执行下次循环
    print(i);
  }

}
