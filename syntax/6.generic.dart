// Copyright (c) 2020 kirakira
// dart-step-by-step is licensed under Mulan PSL v2.
// You can use this software according to the terms and conditions of the Mulan PSL v2.
// You may obtain a copy of Mulan PSL v2 at:
//          http://license.coscl.org.cn/MulanPSL2
// THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
// EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
// MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
// See the Mulan PSL v2 for more details.

/**
 * 使用库
 * 其实前面已经用过了
 */

import 'dart:math';
import 'dart:html';

// 导入库的一部分
// Import only foo.
// import 'package:lib1/lib1.dart' show foo;
// Import all names EXCEPT foo.
// import 'package:lib2/lib2.dart' hide foo;

/**
 * 泛型
 */

class BaseClass {
}

/// 泛型类
/// 限制泛型类型
abstract class Cache<T extends BaseClass> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

main(List<String> args) {
  // 泛型构造函数
  var map = Map<int, String>();
}
