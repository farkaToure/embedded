#include <stdio.h>
#include <stdlib.h>
#include "vector_xyz.h"
#include "csvparser.h"

//FILE    *fpData;

//Person temp = {0,"",0,0,0};



void fetch_data(const char *filePath, Vector_XYZ** input_data )
{
    CsvParser *csvparser = CsvParser_new(filePath, ",", 1);
    CsvRow *header;
    CsvRow *row;
    unsigned r_index=0;
    int i;

    header = CsvParser_getHeader(csvparser);
    if (header == NULL)
    {
        printf("%s\n", CsvParser_getErrorMessage(csvparser));
        return ;
    }
    char **headerFields = CsvParser_getFields(header);
    for ( i = 0 ; i < CsvParser_getNumFields(header) ; i++)
    {
        //printf("TITLE: %s\n", headerFields[i]);
    }
    CsvParser_destroy_row(header);
    while ((row = CsvParser_getRow(csvparser)) )
    {

        //printf("NEWFIELD\n");
        char **rowFields = CsvParser_getFields(row);

        // no mapping for atof(rowFields[0]);
        (*input_data)[r_index].x = atof(rowFields[1]);
        (*input_data)[r_index].y = atof(rowFields[2]);
        (*input_data)[r_index].z = atof(rowFields[3]);
        (*input_data)[r_index].d_time = atof(rowFields[4]);

        CsvParser_destroy_row(row);
        r_index++;
    }
    CsvParser_destroy(csvparser);


}

unsigned int rows_count(const char *filePath){

    CsvParser *csvparser = CsvParser_new(filePath, ",", 1);
    CsvRow *header;
    CsvRow *row;
    unsigned  r_index=1;

    header = CsvParser_getHeader(csvparser);
    if (header == NULL)
    {
        printf("%s\n", CsvParser_getErrorMessage(csvparser));
        return -1;
    }
    char **headerFields = CsvParser_getFields(header);

    CsvParser_destroy_row(header);
    while ((row = CsvParser_getRow(csvparser)) )
    {
        r_index++;
        //printf("NEW LINE:\n");
        //char **rowFields = CsvParser_getFields(row);
        //for (i = 0 ; i < CsvParser_getNumFields(row) ; i++)
        //{
            //printf("FIELD: %s\n", rowFields[i]);

        //}
        CsvParser_destroy_row(row);
    }
    CsvParser_destroy(csvparser);
    return r_index;
}
