#include <stdio.h>
#include <stdlib.h>
#include "attitude3d.h"
#include "light_kalman.h"
#include "csv_input.h"


int main()
{
    int i;

    Vector_XYZ* acc_vector;
    Vector_XYZ* gyro_vector;
    Vector_XYZ gyro_estimation={0.0,0.0,0.0,0.0};
    Vector_XYZ attitude;

    unsigned acc_count = rows_count("data/pitchmove45_acc.csv");
    printf("acc rows count: %d \n",acc_count);
    //printf("size of Vector_XYZ: %zu \n", sizeof(Vector_XYZ));
    unsigned gyro_count = rows_count("data/pitchmove45_gyr.csv");




    acc_vector=malloc(sizeof(Vector_XYZ)*acc_count);
    fetch_data("data/pitchmove45_acc.csv", &acc_vector);

    gyro_vector=malloc(sizeof(Vector_XYZ)*gyro_count);
    fetch_data("data/pitchmove45_gyr.csv", &gyro_vector);

    for (i=0; i<acc_count;i++)
        printf("p: %.2f r: %.2f\n", _pitch(acc_vector[i]), _roll(acc_vector[i]));

    printf("gyro rows count: %d \n",gyro_count);

    for (i=0; i<gyro_count;i++){
        Gyro_Estimation(&gyro_estimation, gyro_vector[i], gyro_vector[i].d_time );
        printf("p: %.2f r: %.2f\n", _pitch(gyro_estimation), _roll(gyro_estimation));
    }

    printf("KALMAN \n");
    for (i=0; i<gyro_count;i++){
        Gyro_Estimation(&gyro_estimation, gyro_vector[i], gyro_vector[i].d_time );

        light_kalman(&attitude,acc_vector[i], gyro_estimation, 0.6 ); //Vector_XYZ acc_vector, Vector_XYZ gyro_vector, float wGyro

        printf("p: %.2f r: %.2f\n", _pitch(attitude), _roll(attitude));
    }

    return 0;
}
