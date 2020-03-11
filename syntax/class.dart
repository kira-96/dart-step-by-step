/**
 * 每个对象都是一个类的实例，所有的类都继承于 Object.
 * 基于 * Mixin 继承* 意味着每个类（除 Object 外）都只有一个超类，
 * 一个类中的代码可以在其他多个继承类中重复使用。
 */

class Point {
  num x; // 声明示例变量 x，初始值为 null 。
  num y; // 声明示例变量 y，初始值为 null 。

  Point(this.x, this.y);
  // 相当于
  /*
  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
  */

  // 命名构造函数
  Point.fromJson(Map<String, num> json) 
    : x = json['x'],
      y = json['y'] {
    print('Point.fromJson($json)');
  }

  String toString() {
    return "($x, $y)";
  }
}

class Point3D extends Point {
  num z = 0;

  Point3D(num x, num y, this.z) : super(x, y);

  Point3D.fromJson(Map<String, num> json) 
    : super.fromJson(json) {
    z = json['z'];
  }

  // 重定向构造函数
  // 指向主构造函数
  Point3D.point2D(num x, num y) : this(x, y, 0);

  // _ 是私有属性
  static final Map<String, Point3D> _cache = <String, Point3D>{
    'origin': Point3D(0, 0, 0)
  };

  // 工厂构造函数
  factory Point3D.fromName(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      return null;
    }
  }
  
  @override
  String toString() {
    return "($x, $y, $z)";
  }
}

// 常量构造函数
// 如果该类生成的对象是固定不变的，那么就可以把这些对象定义为编译时常量。
// 为此，需要定义一个 const 构造函数，并且声明所有实例变量为 final。
class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);

  final num x, y;
  const ImmutablePoint(this.x, this.y);
}

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // get; set; 方法
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

// 抽象类
abstract class Container {
  void update();  // 抽象方法

  bool contains(String name) => false;
}

// 继承可以不用重写所有方法
class Name extends Container {
  @override
  void update() {
    // TODO: implement update
    print('Name.update');
  }
}

// 接口实现需要重新实现所有方法
class Name1 implements Container {
  @override
  bool contains(String name) {
    // TODO: implement contains
    print('Name1.contains');
    return true;
  }

  @override
  void update() {
    // TODO: implement update
    print('Name1.update');
  }
}

// 枚举 和C# 一样
enum Color {
  red,  // 0
  green,  // 1
  blue  // 2
}

class StringContainer {
  String toString() => '';
}

class MixinContainer extends StringContainer with Container {
  @override
  void update() {
    // TODO: implement update
  }
}

void updateContainer(Container c) {
  c.update();
}

main(List<String> args) {
  var p1 = new Point3D.fromJson({ 'x': 4, 'y': 4, 'z': 4 });
  print(p1.toString());
  print(Point3D.fromName('origin').toString());

  updateContainer(Name());
  updateContainer(Name1());

  print(MixinContainer().toString());
}
