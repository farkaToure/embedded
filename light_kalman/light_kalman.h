#define M_PI   3.14159265358979323846 /* pi */

typedef struct {
  float x;
  float y;
  float z;
} Vector_XYZ;

float _roll(Vector_XYZ vector){
 return (atan2(-vector.x, vector.z)*180.0)/M_PI;
}

float _pitch (Vector_XYZ vector){
 return (atan2(vector.y, sqrt(vector.x*vector.x + vector.z*vector.z))*180.0)/M_PI; 
}

void light_kalman(Vector_XYZ *est_vector, Vector_XYZ acc_vector, Vector_XYZ gyro_vector, float wGyro){
  est_vector->x = (acc_vector.x + gyro_vector.x * wGyro) / (1+wGyro);
  est_vector->y = (acc_vector.y + gyro_vector.y * wGyro) / (1+wGyro); 
  est_vector->z = (acc_vector.z + gyro_vector.z * wGyro) / (1+wGyro);
}

void Gyro_Estimation(Vector_XYZ* gyro_est, Vector_XYZ gyro_vector, Vector_XYZ est_vector, int time){
 float Axz_n, Ayz_n;
 int Sign;
 
 //compute Axz_n = est_vector.x + gyro_vector.x * time
 Axz_n = est_vector.x + gyro_vector.x * time;
 //compute Ayz_n = est_vector.y + gyro_vector.y * time 
 Ayz_n = est_vector.y + gyro_vector.y * time ;
 //compute RGyro.x = sin(Axz_n) / sqrt(1+ cos(Axz_n)^2 * tan(Ayz_n)^2
  gyro_est->x = sin(Axz_n) / sqrt(1+ cos(Axz_n)^2 * tan(Ayz_n)^2);
  
 //compute RGyro.y = sin(Ayz_n) / sqrt(1+ cos(Ayz_n)^2 * tan(Axz_n)^2
  gyro_est->y = sin(Ayz_n) / sqrt(1+ cos(Ayz_n)^2 * tan(Axz_n)^2);

  //compute RGyro.z... 
  // RzGyro = Sign(RzEst)*sqrt(1-RxGyro^2 - RyGyro^2)
  // if RzEst >=0 then Sign(RzEst) = 1
  // if RzEst < 0 then Sign(RzEst) = -1
 
  Sign = est_vector.z < 0 ? -1 : 1;
  gyro_est->z = Sign * sqrt(1- gyro_est->x ^2 - gyro_est->y^2);
  
  
}

