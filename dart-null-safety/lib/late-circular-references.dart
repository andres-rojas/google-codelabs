// Try using the late keyword to fix this code
class Team {
  // final Coach coach;
  late final Coach coach;
}

class Coach {
  // final Team team;
  late final Team team;
}

void main() {
  final myTeam = Team();
  final myCoach = Coach();
  myTeam.coach = myCoach;
  myCoach.team = myTeam;

  print('All done!');
}
