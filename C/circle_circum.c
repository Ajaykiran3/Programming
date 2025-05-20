#include <stdio.h>
int main(){
    float d,circum;
    printf("Enter the Diameter Value d in cm : ");
    scanf("%f",&d);
    circum = 3.14*d;
    printf("Circumference of Circle with Diameter d = %.2f cm is : %.2f cm",d,circum);
    return 0;
}