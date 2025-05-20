#include <stdio.h>
int main(){
    float far,cel;
    printf("Enter in Temperature in F : ");
    scanf("%f",&far);
    cel = ((far-32)*5/9);
    printf("Temperature in F : %.2f\nTemperature in C : %.2f",far,cel);
    return 0;
}