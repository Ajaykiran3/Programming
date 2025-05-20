#include <stdio.h>
int main(){
    float l,b;
    printf("Enter the Value of Length (l in cm) : ");
    scanf("%f",&l);
    printf("Enter the Value of Breadth (b in cm): ");
    scanf("%f",&b);
    printf("The Perimeter of Rectangle whose Lenght l = %.2f cm and Breadth b = %.2f cm is : %f cm",l,b,2*(l+b));
    return 0;
}