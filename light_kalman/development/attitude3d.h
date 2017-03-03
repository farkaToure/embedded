
#include <math.h>

#include "vector_xyz.h"

float _roll(Vector_XYZ vector){
 return (atan2(-vector.x, vector.z)*180.0)/M_PI;
}

float _pitch (Vector_XYZ vector){
 return (atan2(vector.y, sqrt(vector.x*vector.x + vector.z*vector.z))*180.0)/M_PI;
}
