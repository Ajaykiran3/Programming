#include <stdio.h>
int main(){
    float l,b,a;
    printf("Enter the length l in cm : ");
    scanf("%f",&l);
    printf("Enter the Breadth b in cm : ");
    scanf("%f",&b);
    a = l*b;
    printf("Area of Rectangle Whose Length l = %.2f cm and Breadth b = %.2f cm is : %.2f cm^2",l,b,a);
    return 0;
}