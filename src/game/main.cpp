#include <raylib.h>
#include <iostream>

int main(void){
  InitWindow(640, 480, ":3");
  
  SetTargetFPS(60);
  
  SetExitKey(KEY_NULL); //Disable Exit Key
  bool altf4pressed = false;
  while (!WindowShouldClose() && !altf4pressed){
    //order is update, vars, draw

    //check if both alt and f4 are down in the same frame
    altf4pressed = IsKeyDown(KEY_LEFT_ALT) && IsKeyDown(KEY_F4);
    
    BeginDrawing();
    
    ClearBackground(VIOLET);

    int fontsize=20;
    const char* text = "old man chair 4ever :3";
    int textwidth = MeasureText(text, fontsize);
    DrawText(text, 640/2-textwidth/2, 480/2-20, fontsize, BLACK);
    
    EndDrawing();
  }
  
  CloseWindow();
  
  return 0;
}
