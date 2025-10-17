#include <iostream>
using namespace std;

int computeSum(int a, int b) {
    int result = a + b;
    if (result > 10)
        result = result - 5;
    else if (result < 0)
        result = 0;
    return result;
}

int multiply(int x, int y) {
    int product = 1;
    for (int i = 0; i < y; ++i)
        product *= x;
    return product;
}

void printResult(int value) {
    if (value == 0)
        cout << "Zero" << endl;
    else if (value > 0)
        cout << "Positive: " << value << endl;
    else
        cout << "Negative: " << value << endl;
}

int main() {
    int sum = computeSum(7, 8);
    int mult = multiply(3, 4);
    printResult(sum + mult);
    return 0;
}
