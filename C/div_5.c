#include <stdio.h>
int main(){
    int a,rem;
    printf("Enter the Value of a : ");
    scanf("%d",&a);
    rem = a%5;
    printf("Remainder of %d%%5 is : %d ",a, rem);
    return 0;
}