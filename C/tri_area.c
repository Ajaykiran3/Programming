#include <stdio.h>
int main(){
    float b,h,area;
    printf("Enter the Value of Base (b in cm) : ");
    scanf("%f",&b);
    printf("Enter the Value of Height (h in cm) : ");
    scanf("%f",&h);
    area = b*h/2;
    printf("The Area of Triangle having Base b = %.2f cm and Height h = %.2f is : %.2f cm^2",b,h,area);
    return 0;
}