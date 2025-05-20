#include <stdio.h>
int main(){
    float r;
    printf("Enter the Value of Radius (r in cm) : ");
    scanf("%f",&r);
    printf("Area of Circle Whose Radius r = %.2f cm  is : %.2f cm^2",r,3.14159*r*r);
    return 0;
}