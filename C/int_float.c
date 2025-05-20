#include <stdio.h>
int main(){
    int a;
    float b,c;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    printf("Enter the Value of b : ");
    scanf("%f",&b);
    c = a+b;
    printf("Sum of %d and %.2f is %.2f",a,b,c);
    return 0;


}