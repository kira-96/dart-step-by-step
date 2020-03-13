// Copyright (c) 2020 kirakira
// dart-step-by-step is licensed under Mulan PSL v2.
// You can use this software according to the terms and conditions of the Mulan PSL v2.
// You may obtain a copy of Mulan PSL v2 at:
//          http://license.coscl.org.cn/MulanPSL2
// THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
// EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
// MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
// See the Mulan PSL v2 for more details.

typedef Add = num Function(num a, num b);

typedef Compare<T> = bool Function(T a, T b);

bool CompareNum(num a, num b) => a > b;

main(List<String> args) {
  Add add = (a, b) => a + b;
  Compare<num> compare = CompareNum;

  print(add(3, 3));
  print(compare(1, 2));
}

// 元数据
abstract class Base {
  void run();
}

class Some extends Base {
  @override
  void run() {
    // TODO: implement run
  }

  @deprecated
  void newRun() {
    run();
  }
}
