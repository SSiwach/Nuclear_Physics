// Online C compiler to run C program online
#include <stdio.h>
#include<math.h>
float f(float A)
{
	float n,m,a;
	float OE;
	n = pow(A,-0.3333);
	m = pow(A,-0.6666);
	OE = 45*n-25*m;
	
	return(OE);
}
float g(float A)
{
	float n,a;
	float OE;
	n = pow(A,-0.3333);
	OE = 41*n;
	
	return(OE);
}
float main() 
{
    float A,N1,Z,E,E1,V01,V11,V0,V1;
    float W;
    FILE *fp=NULL;
    fp=fopen("Oscillator_strength.txt","w");
  //  printf("Enter the value of A,N,Z\n");
//    scanf("%f,%f,%f",&A,&N,&Z);
//    printf("%f \n %f \t %f \t %f",f(A),A,N,Z);
// 	printf("%f \n %f \t %f \t %f",g(A,N,Z),A,N,Z);   

    printf("Enter the value of Z and N : \n")
    scanf("%f, %f",&Z, &N)
    for(A=0;A<208;A++)
    { 
        N = A-Z
        printf("Value of Oscillator strength : %f  for A : %f\n",f(A),A);
        fprintf(fp,"Value of Oscillator strength : %f  for A : %f\n",f(A),A);
	for(N1 = 0;N1<10;N++)
	{
		E = (N1+1.5)*f(A);
		E1 = (N1+1.5)*g(A);
		V01 = (51 + (33*(N-Z)/A));
		V0 = (51 - (33*(N-Z)/A));
		V1 = -(V0) + E;
		V11 = -(V01) + E1;
		fprintf(fp,"Value of V1 = %f\n", V1 );
		fprintf(fp,"Value of V10 = %f\n", V11 );
	}
    }
    return 0;
}
