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
 * 异步
 */

import 'dart:math';

// 同步生成器
Iterable<int> generateNum(int n) sync* {
  int i = 0;
  while (i < n) {
    yield Random().nextInt(0xFFFF);
  }
}

// 异步生成器
Stream<int> generateNumAsync(int n) async* {
  int i = 0;
  while (i++ < n) {
    yield Random().nextInt(0xFFFF);
  }
}

Stream<int> rev(int n) async* {
  if (n > 0) {
    yield n;
    yield* rev(n - 1);
  }
}

Future<String> lookupVersionAsync() async => '1.0.0';

Future main(List<String> args) async {
  await for (var item in rev(10)) {
    print(item);
  }
}