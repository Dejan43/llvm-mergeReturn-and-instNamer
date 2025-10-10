#include <iostream>

int complex_conditions(int a, int b, int c) {
    if (a > b) {
        if (b > c) {
            return 1;
        } else {
            return 2;
        }
    } else {
        if (a == c) {
            return 3;
        } else if (b == c) {
            return 4;
        } else {
            return 5;
        }
    }
}

int with_loops(int n) {
    for (int i = 0; i < n; i++) {
        if (i == 5) {
            return 100;
        }
        if (i * i > n) {
            return 200;
        }
    }
    return 300;
}

int main(){
    const auto x = complex_conditions(1,2,3);
    with_loops(x); 

    return 0;
}