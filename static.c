#include <stdio.h>
#include "static.h"

void staticcall() {
    printf("Hello, static!\n");
    return ;
}

void staticvoidcall() {
    printf("static void call\n");

}

void normalstatic() {
    printf("normalstatic \n");
}
