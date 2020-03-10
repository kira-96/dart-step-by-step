main(List<String> args) {
  dynamic name = 'Bob';  // 动态类型
  String name1 = 'Bob';  // 显式声明类型
  var name2 = 'Bob';     // 隐式声明类型

  // 无论是数字，函数和 null 都是对象。所有对象继承自 Object 类。
  int lineCount;
  // 不同于C#，未赋值的数字默认值也是 null
  assert(lineCount == null);
  
  // final 只能被赋值一次
  // 最高级 final 变量或类变量在第一次使用时被初始化。
  final yourName = 'Bob';

  // const 常量
  // Const 变量在编译时就已经固定 (Const 变量 是隐式 Final 的类型.)
  const PI = 3.141592653;
  const baz = [];

  // Number
  var hex = 0xDEADBEEF;  // int
  var exponents = 1.42e5;  // double

  var one = int.parse('1');
  var onePointOne = double.parse('1.1');

  // int -> String
  String oneAsString = one.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = PI.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // String, 可以使用 '' 或 ""

  // Boolean
  var fullName = "";
  assert(fullName.isEmpty);

  // List 数组
  var list = [1, 2, 3];

  // Set
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  // Set<String> names = {}; // 这样也是可以的。

  // Map key-value
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
  };
  // or
  var nobleGases = Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Rune
  Runes input = new Runes(
    '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));

  // Symbol
  var symbol = #one;
  print(symbol);
}
