import '../ui/game/helpers/helpers.dart';

class GameManager {
  int score = 0;
  Direction? direction;
  bool gameOver = false;

  void increaseScore() {
    score += 1;
  }

  void resetScore() {
    score = 0;
  }

  void releaseControl() {
    direction = null;
  }

  void setDirection(Direction dashDirection) {
    direction = dashDirection;
  }

  void setGameOver(bool isOver) {
    gameOver = isOver;
  }
}
