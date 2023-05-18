//=================Abstract Class=================//

abstract class Animal {
  // abstract class cannot be instantiated. can only be inherited
  void sayHello() {
    print('Animal say hello');
  }
}

//=================Interface=================//

abstract class Hello {
  void sayHello();
}

abstract class Hey {
  void sayHey();
}

class Dog implements Hello, Hey {
  @override
  void sayHello() {
    print('Dog say hello');
  }

  @override
  void sayHey() {
    print('Dog say hey');
  }
}

class Human extends Animal {
  void sayName() {
    print('Human say name');
  }

  @override
  void sayHello() {
    print('Human say hello');
    super.sayHello();
  }
}

//=================Mixin=================//
mixin Sample1 {
  void sayHello() {
    print('sample1 say hello');
  }
}

mixin Sample2 {
  void sayHey() {
    print('sample2 say hey');
  }
}

class MainSample with Sample1, Sample2 {
  void say() {
    super.sayHello();
    super.sayHey();
  }
}

void main(List<String> arguments) {
  var human = Human();
  human.sayHello();
  human.sayName();
  var dog = Dog();
  dog.sayHello();
  dog.sayHey();
  var mainSample = MainSample();
  mainSample.say();
}
