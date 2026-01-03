#include <raylib.h>

int main(void) {
  const int width = 854;
  const int height = 480;
  const char *title = "raylib basic window";

  InitWindow(width, height, title);

  SetTargetFPS(60);

  while (!WindowShouldClose()) {
    BeginDrawing();
      ClearBackground(RAYWHITE);
      DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY);
    EndDrawing();
  }

  CloseWindow();

  return 0;
}
