#include <stdio.h>
#include "operations.h"
#include "utils.h"

int main() {
    int a = 7;
    int b = 5;
    int result;

    // Using the add function from operations.c
    result = add(a, b);
    printf("Addition of %d and %d is %d\n", a, b, result);

    // Using the subtract function from operations.c
    result = subtract(a, b);
    printf("Subtraction of %d and %d is %d\n", a, b, result);

    return SUCCESS;
}
