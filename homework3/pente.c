#include <stdio.h>

char** twist(char gameblock[3][3])
{
    char x[1][1]={{1}};
    return x;
}

int main(int argc, char *argv[])
{   
    char B1[3][3]={{1,2,3},{4,5,6},{7,8,9}};
    char B2[3][3]={{1,2,3},{4,5,6},{7,8,9}};
    char B3[3][3]={{1,2,3},{4,5,6},{7,8,9}};
    char B4[3][3]={{1,2,3},{4,5,6},{7,8,9}};

    int turn=0;

    FILE *in_file=fopen(argv[1],"r");

    if(in_file == NULL)
    {
        printf("Error!");
    }

    char c;
    while((c=fgetc(in_file)) != EOF)
    {
        if(c==" "||c=="\t")
        {
            continue;
        }
        else if(c=="\n")
        {
            turn++;
            continue;
        }
        else
        {
            if((turn%0)==0)
            {
                if(c=="1"&&fgetc(in_file)==":")
                {
                    c=fgetc(in_file);
                    switch(c)
                    {
                        case '1':
                            B1[0][0]='R';
                            break;
                        case '2':
                            B1[0][1]='R';
                            break;
                        case '3':
                            B1[0][2]='R';
                        case '4':
                            B1[1][0]='R';
                        case '5':
                            B1[1][1]='R';
                        case '6':
                            B1[1][2]='R';
                        case '7':
                            B1[2][0]='R';
                        case '8':
                            B1[2][1]='R';
                        case '9':
                            B1[2][2]='R';
                        default:
                            printf("No output");
                    }
                }
                else if(c=="2"&&fgetc(in_file)==":")
                {

                }
                else if(c=="3"&&fgetc(in_file)==":")
                {

                }
                else if(c=="4"&&fgetc(in_file)==":")
                {

                }
            }
        }
    }
    fclose(in_file);
    return 0;
}