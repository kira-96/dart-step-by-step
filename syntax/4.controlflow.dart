/**
 * if ... else
 * for
 * for (var item in collection)  相当于 foreach
 * while
 * do-while
 * switch ... case
 * brack
 * continue
 * assert
 * try ... catch ... finally
 * throw
 * 
 * 和 C# 基本一致
 */

/**
 * 运算符，需要注意的
 * ~/ 相除取整
 * assert(5 ~/ 2 == 2); // 结果是整型
 * ?? 和C#一样
 * 级联运算符 (..)
 * querySelector('#confirm') // 获取对象。
 *   ..text = 'Confirm' // 调用成员变量。
 *   ..classes.add('important')
 *   ..onClick.listen((e) => window.alert('Confirmed!'));
 * 等价于
 * var button = querySelector('#confirm');
 * button.text = 'Confirm';
 * button.classes.add('important');
 * button.onClick.listen((e) => window.alert('Confirmed!'));
 */