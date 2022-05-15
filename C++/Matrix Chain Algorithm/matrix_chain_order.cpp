#include<stdio.h>
#include<stdlib.h>

int minimum_cost(int matrix[20], int t)
{
	int x, small;
	if(t == 1)
        {
		printf("\n small = %d",matrix[0]);
		return matrix[0];
	}
    	else
    	{
        	small = matrix[0];
		printf("\t Matrix entries = %d", matrix[0]); 
        	for(x = 1; x < t; x++)
        	{
			printf("\t %d",matrix[x]);
            		if(matrix[x] < small)
                	{
				small = matrix[x];	
			}
        	}
		printf("\t Small = %d",small);
printf("\n");
        	return small;
    	}
}

int main()
{
	int t, i, l, j, k, limit;		
	int matrix[30], multiplier[10][15], columns[15]={35,15,5,10,20,25}, rows[15]={30,35,15,5,10,20}, temp[15];
	printf("\nEnter Total Number of Matrices:\t");
	scanf("%d", &limit);
	/*for(i = 0; i < limit; i++)
	{
		printf("Enter Number of Rows of Matrix %d:\t", i + 1);
        	scanf("%d", &rows[i]);
        	printf("\nEnter Number of Columns of Matrix %d:\t", i + 1);
		scanf("%d", &columns[i]);
    	}
    	*/for(i = 0; i < limit; i++)
        {
		temp[i] = columns[i];
	}
    	temp[i] = rows[i - 1];
    	printf("\n");
    	for(k = 1; k <= limit; k++)
        {
		for(j = k, i = 1; j <= limit; j++, i++)
                {
			multiplier[i][j] = 0;
		}
	}
	for(l = 2; l <= limit; l++)
	{
		for(j = l, i = 1; j <= limit; j++, i++)
		{
			t = 0;
			for(k = i; k < j; k++)    
			{
				//printf("\nmatrix : Before =%d",matrix[t+1]);
				matrix[t++] = (multiplier[i][k] + multiplier[k + 1][j]) + (temp[i - 1] * temp[k] * temp[j]);
        			//printf("\t matrix after =%d",matrix[t]);
			}
			multiplier[i][j] = minimum_cost(matrix, t);
		}
	}
	printf("\nMinimum Scalar Multiplications:\t%d\n", multiplier[1][limit]);
	return 0;
}
