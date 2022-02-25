#include <iostream>

int main()
{
    int n;
    std::cout << "[STANDARD OUTPUT] Please input a number bigger than 100" << std::endl;
    std::cin >> n;
    if (n > 100)
        std::cout << "[STANDARD OUTPUT] Number is = " << n << std::endl;
    else
        std::cerr << "[STANDARD ERROR] Number is not bigger than 100 = " << n << std::endl;
    return 0;
}