bool anyUserUnder18(Iterable<User> users) {
  return users.any((u) => u.age < 18);
}

bool everyUserOver13(Iterable<User> users) {
  return users.every((u) => u.age > 13);
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}
