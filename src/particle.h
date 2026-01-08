#include "raylib.h"

#define MAX_PARTICLES 512

typedef struct {
  float x[MAX_PARTICLES];
  float y[MAX_PARTICLES];
} Particle;
