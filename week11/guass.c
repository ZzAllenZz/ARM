#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    float M[3][4] = {1,2,4,6,1,1,2,4,1,1,1,2};
    float p[4] = {0.0};
    int i;
    int j;
    int k;
    for(i=0;i<2;i++)
    {
        for(j=i+1;j<3;j++)
        {
            for(k=0;k<4;k++)
            {
                *(p+k) = -M[i][k]/M[i][i]*M[j][i];
            }
            for(k=0;k<4;k++)
            {
                M[j][k] = *(p+k) + M[j][k];
            }
        }
    }
    return 0;
}
