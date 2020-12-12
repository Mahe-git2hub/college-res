#include<stdio.h>

typedef struct{
	int real;
	int imaginary;
}complex;			// complex is the name of the structure.

void getcmplx (complex* pcmplx);
void addcmplx (complex* pcmplx1,complex* pcmplx2,complex* prcmplx);

int main()
{
	complex cmplx1;
	complex cmplx2;
	complex rcmplx;		//declared three complex structure variables.
	
	getcmplx(&cmplx1);	// to get input for cmplx1
	getcmplx(&cmplx2);	// to get input for cmplx2
	addcmplx(&cmplx1,&cmplx2,&rcmplx);	// add the two complex numbers
	
	printf("The sum of the given complex numbers %d+i%d + %d+i%d is:\t%d+i%d \n ",cmplx1.real,cmplx1.imaginary,cmplx2.real,cmplx2.imaginary,rcmplx.real,rcmplx.imaginary);
	
	return 0;
}	// main closed

void getcmplx (complex* pcmplx)		// to get the inputs for complex nos from the user
{
	printf("enter  the real part of complex number of the form a+ib where a and b are real and imaginary coefficients respectively \n");
	scanf("%d",&(pcmplx->real));
	printf("enter  the imaginary part of complex number of the form a+ib where a and b are real and imaginary coefficients respectively \n");
	scanf("%d",&(pcmplx->imaginary));
	return;
}

void addcmplx(complex* pcmplx1,complex* pcmplx2,complex* prcmplx)
{
	// adding the real and imaginary parts
	
	prcmplx->real = pcmplx1->real+pcmplx2->real;
	prcmplx->imaginary = pcmplx1->imaginary+pcmplx2->imaginary;
	return;
}
