#include <stdio.h>
int main(){
    int a,b,rem,quo;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    printf("\nEnter the Value of b : ");
    scanf("%d",&b);
    quo = a/b;
    rem = a%b;
    printf("\n%d/%d is %d",a,b,quo);
    printf("\n%d %% %d is %d",a,b,rem);
    return 0;
}