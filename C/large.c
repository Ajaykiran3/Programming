#include <stdio.h>
int main(){
    int a,b;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    printf("Enter the Value of b : ");
    scanf("%d",&b);
    a>b?printf("%d is Greater than %d",a,b):(a==b)?printf("%d is equal to %d",a,b):printf("%d is less than %d",a,b);
    return 0;
}