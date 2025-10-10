#include<iostream>

int same_returns(int x) {
    if (x > 0) {
        return 42;
    } else {
        return 42;
    }
}

void mixed_void_returns(int x) {
    switch(x) {
        case 1: return;
        case 2: return;
        case 3: return;
        default: return;
    }
}

void no_returns(int x) {
    x = x + 1;
}

int main(){
    no_returns(2);
    mixed_void_returns(22);

    no_returns(same_returns(22));
    return 0;
}