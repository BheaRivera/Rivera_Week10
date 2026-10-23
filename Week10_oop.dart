
abstract class Animal {
  final String name;
  final int age;

  Animal(this.name, this.age);

  // Abstract method that subclasses must implement.
  void makeSound();

  // Shared method inherited by subclasses.
  void showDetails() {
    print('Name: $name');
    print('Age: $age years old');
  }
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('$name says: Woof! Woof!');
  }
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('$name says: Meow! Meow!');
  }
}

// Mixin for reusable training behavior.
mixin Trainable {
  void train(String skill) {
    print('Training activity: $skill');
  }
}

// This class uses the mixin without extending Animal.
class AnimalCareVolunteer with Trainable {
  final String name;

  AnimalCareVolunteer(this.name);

  void introduce() {
    print('Volunteer: $name');
  }
}

void main() {
  print('=== ANIMAL MANAGEMENT SYSTEM ===\n');

  // Polymorphism: one list contains different Animal subclasses.
  List<Animal> animals = [
    Dog('Cali', 3),
    Cat('Luna', 2),
  ];

  for (Animal animal in animals) {
    print('--- Animal Information ---');
    animal.showDetails();
    animal.makeSound();
    print('');
  }

  // Demonstrate the mixin using the volunteer.
  print('--- Animal Care Volunteer ---');

  AnimalCareVolunteer volunteer =
      AnimalCareVolunteer('Bhea');

  volunteer.introduce();
  volunteer.train('Basic animal care');

  print('\nProgram completed successfully.');
}
