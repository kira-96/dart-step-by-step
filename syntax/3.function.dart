// Copyright (c) 2020 kirakira
// dart-step-by-step is licensed under Mulan PSL v2.
// You can use this software according to the terms and conditions of the Mulan PSL v2.
// You may obtain a copy of Mulan PSL v2 at:
//          http://license.coscl.org.cn/MulanPSL2
// THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
// EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
// MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
// See the Mulan PSL v2 for more details.

import 'dart:math';

// main函数
void main(List<String> args) {
  print(args);

  print(generateNumber());

  enableFlags(hidden: true);

  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  assert(say('Bob', 'Howdy', 'smoke signal') == 'Bob says Howdy with a smoke signal');

  var list = [0xF, 0xFF, 0xFFF, 0xFFFF];
  // 匿名函数，有时候也被称为 lambda 或者 closure
  list.forEach((max) {
    print(generateNumber(max));
  });

  var add2 = makeAdder(2);
  assert(add2(3) == 5);

  // 所有函数都会返回一个值。 
  // 如果没有明确指定返回值，函数体会被隐式的添加 return null; 语句。
  foo() {}
  assert(foo() == null);
}

// 可以省略类型声明
// 可以使用 箭头语法
generateNumber([int max = 0xFFFFFFFF]) => Random().nextInt(max);

// 命名可选参数
// 有默认值
void enableFlags({bool bold = false, bool hidden = false}) {
  print('enableFlags({bold: $bold, hidden: $hidden})');
}

// 位置可选参数
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// 闭包
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

/**
 * 使用 @required 注释表示参数是 required 性质的命名参数
 */
/*
void requiredParam({@required String key, Object value}) {
  print('requiredParam({key: $key, value: $value})');
}
*/


