#include <stdio.h>
int main(){
    float side,a,p;
    printf("Enter the Value of Side in cm: ");
    scanf("%f",&side);
    p = 4*side;
    a = side*side;
    printf("Perimeter of Square with side %f cm is : %.2f cm\nArea of Square with side %f cm is : %.2f cm^2: ",side,p,side,a);
    return 0;
}