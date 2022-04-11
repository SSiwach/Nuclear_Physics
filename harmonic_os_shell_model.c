// Online C compiler to run C program online
#include <stdio.h>
#include<math.h>
float f(float A)
{
	float n,m,a;
	float OE;
	n = pow(A,-0.33333333333);
	m = pow(A,-0.66666666666);
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
    float A,N1,Z,E,E1,V01,V11,V0,N,V1;
    float W,R,fac;
    FILE *fp=NULL;
    fp=fopen("Oscillator_strength.txt","w");
  //  printf("Enter the value of A,N,Z\n");
//    scanf("%f,%f,%f",&A,&N,&Z);
//    printf("%f \n %f \t %f \t %f",f(A),A,N,Z);
// 	printf("%f \n %f \t %f \t %f",g(A,N,Z),A,N,Z);   

    printf("Enter the value of Z and N : \n");
    scanf("%f, %f",&Z, &N);
    A = N + Z;
    R = 1.2*pow(A,0.33333333333);
    fac = 1/(1+(exp((1.27-R)/0.70)));
    printf("Value of Oscillator strength : %f  for A : %f\n",f(A),A);
    printf("Value of Oscillator strength : %f  for A : %f\n",g(A),A);
    fprintf(fp,"Value of Oscillator strength : %f  for A : %f\n",f(A),A);
    for(N1 = 0;N1<=6;N1++)
	{
		E = (N1+1.50)*f(A);
		V0 = (51 - (33*(N-Z)/A))/fac;
		V1 = -(V0) + E;
		printf("Value of V1 = %f\t %f\n", V1,A );
		//printf("Value of V1 =  %f\n",fac);
		fprintf(fp,"Value of V1 = %f\n", V1 );
	}
    
    return 0;
}