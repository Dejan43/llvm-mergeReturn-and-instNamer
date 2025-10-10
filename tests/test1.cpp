#include <iostream>

int multiple_returns(int x) {
    if (x > 10) {
        return 42;
    } else if (x < 0) {
        return -1;
    } else {
        return x * 2;
    }
}

void void_multiple_returns(int x) {
    if (x == 0) {
        return;
    }
    if (x > 100) {
        return;
    }
    return;
}

int single_return(int x) {
    return x * 3;
}

int main(){
    multiple_returns(22);
    void_multiple_returns(100);
    single_return(multiple_returns(22));
    return 0;
}