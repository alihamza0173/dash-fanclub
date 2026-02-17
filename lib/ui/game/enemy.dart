import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:get_it/get_it.dart';

import '../../api/game_manager.dart';

GetIt getIt = GetIt.instance;

class Enemy extends SpriteComponent with HasGameReference, CollisionCallbacks {
  Enemy({super.position}) : super(size: Vector2.all(50), priority: 2);

  @override
  void update(double dt) {
    super.update(dt);

    position -= Vector2(1, 0) * 200 * dt;

    if (position.x < -50) {
      removeFromParent();

      if (getIt<GameManager>().gameOver == false) {
        getIt<GameManager>().increaseScore();
      }
    }
  }

  @override
  void onRemove() {
    super.onRemove();

    print('removing ${toString()}');
  }

  @override
  Future<void>? onLoad() async {
    super.onLoad();
    sprite = await game.loadSprite('game/luggage.png');
    //position = Vector2(gameRef.size.x - 70, gameRef.size.y - 70);
    add(RectangleHitbox());
  }
}
