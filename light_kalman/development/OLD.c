     switch(i)
            {
            case 0:
                break;
            case 1:
                input_data[r_index]->x = atof(rowFields[i]);
                break;

            case 2:
                input_data[r_index]->y = atof(rowFields[i]);

                break;

            case 3:
                input_data[r_index]->z = atof(rowFields[i]);
                break;
            case 4:
                input_data[r_index]->d_time = atof(rowFields[i]);
                break;
            default:
                printf("FIELD %d without mapping %s \n", i, rowFields[i]);
