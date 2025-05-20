#include <stdio.h>
int main(){
    float cel,far;
    printf("Enter the Value of Temperature in C : ");
    scanf("%f",&cel);
    far = (cel*9/5)+32;
    printf("Temperture in C : %.2f\nTemperature in F : %.2f",cel,far);
    return 0;
}