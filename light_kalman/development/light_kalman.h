#include <math.h>
#include "vector_xyz.h"

void light_kalman(Vector_XYZ *est_vector, Vector_XYZ acc_vector, Vector_XYZ gyro_vector, float wGyro)
{
    est_vector->x = (acc_vector.x + gyro_vector.x * wGyro) / (1+wGyro);
    est_vector->y = (acc_vector.y + gyro_vector.y * wGyro) / (1+wGyro);
    est_vector->z = (acc_vector.z + gyro_vector.z * wGyro) / (1+wGyro);
}

void Gyro_Estimation(Vector_XYZ* gyro_est, Vector_XYZ gyro_vector, float time)
{
    float Axz_n, Ayz_n;
    Vector_XYZ new_gyro_est;
    int Sign;

//compute Axz_n = est_vector.x + gyro_vector.x * time
    Axz_n = gyro_est->x + gyro_vector.y * time;
//compute Ayz_n = est_vector.y + gyro_vector.y * time
    Ayz_n = gyro_est->y + gyro_vector.x * time ;
//compute RGyro.x = sin(Axz_n) / sqrt(1+ cos(Axz_n)^2 * tan(Ayz_n)^2
    new_gyro_est.x = sin(Axz_n) / sqrt(1+ pow(cos(Axz_n),2) * pow(tan(Ayz_n),2));

//compute RGyro.y = sin(Ayz_n) / sqrt(1+ cos(Ayz_n)^2 * tan(Axz_n)^2
    new_gyro_est.y = sin(Ayz_n) / sqrt(1+ pow(cos(Ayz_n),2) * pow(tan(Axz_n),2));

    Sign = gyro_est->z < 0  ? -1 : 1;
    new_gyro_est.z = Sign * sqrt(1- pow(new_gyro_est.x ,2) - pow(new_gyro_est.y,2) );
    gyro_est->x = new_gyro_est.x;
    gyro_est->y = new_gyro_est.y;
    gyro_est->z = new_gyro_est.z;

}


